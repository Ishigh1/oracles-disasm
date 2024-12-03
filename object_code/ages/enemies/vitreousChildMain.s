; ==================================================================================================
; ENEMY_VITREOUS_CHILD
;
; Variables:
;   relatedObj1: Pointer to ENEMY_VITREOUS
;   var30: if nonzero, eye moves towards target
;   var31/var32: Target position to move
;
; See also ENEMY_VITREOUS variables.
; ==================================================================================================
enemyCode65_body:
	ld a,c
	jr z,@normalStatus
	sub ENEMYSTATUS_NO_HEALTH
	ret c
	jr nz,@normalStatus

	ld a,Object.health
	call objectGetRelatedObject1Var
	ld a,(hl)
	or a
	jp z,enemyDie_uncounted_withoutItemDrop

	ld a,Object.var3c
	call objectGetRelatedObject1Var
	dec (hl)
	
	jp enemyDie_uncounted_withoutItemDrop
/*
	call objectCreatePuff
	ld h,d
	ld l,Enemy.state
	ld (hl),$0c

	ld l,Enemy.counter1
	ld (hl),30

	ld l,Enemy.var30
	ld (hl),$00

	ld l,Enemy.collisionType
	res 7,(hl)

	ld l,Enemy.health
	ld (hl),$04
	call objectSetInvisible
*/

@normalStatus:
	ld e,Enemy.state

@runState:
	ld a,(de)
	rst_jumpTable
	.dw vitreousChild_state_uninitialized
	.dw vitreousChild_state_stub
	.dw vitreousChild_state_stub
	.dw vitreousChild_state_stub
	.dw vitreousChild_state_stub
	.dw vitreousChild_state_stub
	.dw vitreousChild_state_stub
	.dw vitreousChild_state_stub
	.dw vitreousChild_state8
	.dw vitreousChild_state9
	.dw vitreousChild_stateA


vitreousChild_state_uninitialized:
	ld e,Enemy.subid
	ld a,(de)
	ld hl,vitreousChild_childrenPositionsTable
	rst_addDoubleIndex
	ldi a,(hl)
	ld e,Enemy.yh
	ld (de),a
	ld a,(hl)
	ld e,Enemy.xh
	ld (de),a


	ld a,$01
	call enemySetAnimation

	ld e,Enemy.counter1
	ld a,90
	ld (de),a
	call objectSetVisiblec0
	ld a,SPEED_100
	jp ecom_setSpeedAndState8



vitreousChild_state_stub:
	ret


; Wait for parent to write a value to var30
vitreousChild_state8:
	ld e,Enemy.var30
	ld a,(de)
	or a
	jr z,vitreousChild_animate

	;parent called me. Now I'll target Link's current position
	ld a,(w1Link.yh)
	ld e,Enemy.var31
	ld (de),a
	ld b,a
	ld a,(w1Link.xh)
	inc e ;var32
	ld (de),a
	ld c,a

	;set angle
	call objectGetRelativeAngle
	ld e,Enemy.angle
	ld (de),a

	jp ecom_incState

;move towards target
vitreousChild_state9:
	call vitreousChild_fixAngleTowardTarget
	call objectApplySpeed
	call vitreousChild_checkReachedTarget
	jr nc,vitreousChild_animate

	;Reached target. Now go back to original position
	call ecom_incState
	ld e,Enemy.subid
	ld a,(de)
	ld hl,vitreousChild_childrenPositionsTable
	rst_addDoubleIndex
	ldi a,(hl)
	ld e,Enemy.var31
	ld (de),a
	ld b,a
	ld a,(hl)
	ld e,Enemy.var32
	ld (de),a
	ld c,a

	;set angle
	call objectGetRelativeAngle
	ld e,Enemy.angle
	ld (de),a
	ret

; Reached initial location. Go back to state 8
vitreousChild_stateA:
	call vitreousChild_fixAngleTowardTarget
	call objectApplySpeed
	call vitreousChild_checkReachedTarget
	jr nc,vitreousChild_animate
	ld h,d
	ld e,Enemy.var31
	ld l,Enemy.yh
	ld a,(de)
	ld (hl),a
	ld e,Enemy.var32
	ld l,Enemy.xh
	ld a,(de)
	ld (hl),a
	ld l,Enemy.var30
	ld (hl),$00 ;we reset var30

	ld l,Enemy.state
	ld (hl),$08
	ret

;;
vitreousChild_animate:
	jp enemyAnimate

;;
vitreousChild_childrenPositionsTable:
	.db $4c $6a
	.db $4c $86
	.db $58 $5c
	.db $60 $78
	.db $58 $94


; @param[out]	cflag	c if close enough.
vitreousChild_checkReachedTarget:
	ld h,d
	ld l,Enemy.yh
	ld e,Enemy.var31
	ld a,(de)
	sub (hl)
	jr nc,+
	cpl
	inc a
+
	;a = distance
	ld b,a
	ld a,$02
	sub b
	ccf
	ret nc

	inc l
	inc l
	ld e,Enemy.var32
	ld a,(de)
	sub (hl)
	jr nc,+

	cpl
	inc a
+
	ld b,a
	ld a,$02
	sub b
	ccf
	ret

vitreousChild_fixAngleTowardTarget:
	ld e,Enemy.var31
	ld a,(de)
	ld b,a
	ld e,Enemy.var32
	ld a,(de)
	ld c,a

	call objectGetRelativeAngle
	ld e,Enemy.angle
	ld (de),a
	ret
