; ==================================================================================================
; ENEMY_VITREOUS
;
; Variables:
;   var30-var35: Object indices of children
;   var36/var37: Target Y/X position for state $0b
;   var3c: Number of children alive
; ==================================================================================================
enemyCode6f_body:
	ld a,c
	jr z,@normalStatus
	sub ENEMYSTATUS_NO_HEALTH
	ret c
	jp z,vitreous_dead
	dec a
	jp nz,ecom_updateKnockbackAndCheckHazards

	; ENEMYSTATUS_JUST_HIT or ENEMYSTATUS_KNOCKBACK


@normalStatus:
	ld h,d
	ld e,Enemy.state
	ld a,(de)
	rst_jumpTable
	.dw vitreous_state_uninitialized
	.dw vitreous_state1
	.dw vitreous_state_stub
	.dw vitreous_state_stub
	.dw vitreous_state_stub
	.dw vitreous_state_stub
	.dw vitreous_state_stub
	.dw vitreous_state_stub
	.dw vitreous_state8
	.dw vitreous_state9
	.dw vitreous_stateA
	.dw vitreous_stateB
	.dw vitreous_stateC
	.dw vitreous_stateD
	.dw vitreous_stateD_half
	.dw vitreous_stateE
	.dw vitreous_stateF
	.dw vitreous_state10


vitreous_state_uninitialized:
	ld h,d
	ld l,Enemy.counter1
	ld (hl),60

	ld l,Enemy.collisionType
	res 7,(hl)

	ld l,Enemy.var3c
	ld (hl),$05 ;5 children

	call objectSetVisiblec1

	; Check for subid 1
	ld l,Enemy.subid
	ld a,(hl)
	or a
	ld a,SPEED_80
	jp nz,ecom_setSpeedAndState8

	ld a,$01
	;inc a
	ld (de),a ; [state] = $15 (!)

	ld a,$ff
	ld b,$00
	call enemyBoss_initializeRoom


; Spawning "real" vitreous and children.
vitreous_state1:
	ld b,$06
	call checkBEnemySlotsAvailable
	ret nz

	; Spawn the "real" version of the boss (subid 1).
	ld b,ENEMY_VITREOUS
	call ecom_spawnUncountedEnemyWithSubid01

	ld l,Enemy.enabled
	ld e,l
	ld a,(de)
	ld (hl),a
	call objectCopyPosition

	; Spawn 5 children.
	ld l,Enemy.var30
	ld b,h
	ld c,$05

@spawnChildLoop:
	push hl
	call getFreeEnemySlot_uncounted
	ld (hl),ENEMY_VITREOUS_CHILD
	inc l
	dec c
	ld (hl),c ; [child.subid]

	ld l,Enemy.relatedObj1+1
	ld a,b
	ldd (hl),a
	ld (hl),Enemy.start
	ld a,h
	pop hl
	ldi (hl),a ; [var30+i] = child object index
	jr nz,@spawnChildLoop

	jp enemyDelete


vitreous_state_stub:
	ret


; Flickering into existence
vitreous_state8:
	; Something about doors?
	ld a,($cc93)
	or a
	ret nz

	inc a
	ld (wDisabledObjects),a
	call ecom_decCounter1

	ld (hl),60  ; [counter1]
	inc l
	ld (hl),$09 ; [counter2]

	ld l,e
	inc (hl) ; [state]
	jp objectSetVisiblec1


; Waiting [counter1] frames until fight begins
vitreous_state9:
	call ecom_decCounter1
	;jr nz,vitreous_animate

	ld l,e
	inc (hl) ; [state]

	ld l,Enemy.counter1
	ld (hl),60
	inc (hl)

	call enemyBoss_beginBoss
	jr vitreous_animate


; Standing still for [counter1] frames
vitreous_stateA:
	call ecom_decCounter1
	jp z,ecom_incState

	ld e,Enemy.var3c
	ld a,(de)
	or a
	jr nz,vitreous_animate

	;all eyes dead. Get ready to go to state 10 (called 0f)
	call vitreous_setAnimationBasedOnLink
	ld h,d
	ld l,Enemy.state
	ld (hl),$10 ;$0f
	ld l,Enemy.collisionType
	set 7,(hl)

	ld l,Enemy.counter2
	ld (hl),64
	jr vitreous_animate

; Randomly choosing an available child to send towards Link
vitreous_stateB:
	call getRandomNumber
	and $07
	cp $05
	jr nc,vitreous_stateB
	ld e,Enemy.var30
	add e
	ld e,a
	ld a,(de)
	ld h,a
	ld l,Enemy.var30
	ld a,(hl)
	or a
	jr nz,vitreous_animate
	ld (hl),$01

	ld h,d
	ld l,Enemy.counter1
	ld (hl),60
	inc l ;counter2
	dec (hl)
	jr z,+
	ld l,Enemy.state
	dec (hl)
	jr vitreous_animate

+
;go to thunder state
	ld l,Enemy.state
	inc (hl)
	ld a,$04
	call enemySetAnimation

vitreous_animate:
	jp enemyAnimate


; Emerge for 16 frames
vitreous_stateC:
	ld e,Enemy.animParameter
	ld a,(de)
	or a
	jr z,vitreous_animate

	call vitreous_setAnimationBasedOnLink
	ld h,d
	ld l,Enemy.state
	inc (hl) ; [state]
	ld l,Enemy.counter2
	ld (hl),48

	;ld l,Enemy.enemyCollisionMode
	;ld (hl),ENEMYCOLLISION_EYESOAR

	jr vitreous_animate


; After 48 frames, shoot projectile
vitreous_stateD:
	call vitreous_setAnimationBasedOnLink
	call ecom_decCounter2
	jr nz,vitreous_animate
	ld l,Enemy.state
	inc (hl)
	ld l,Enemy.counter2
	ld (hl),20
	call objectGetAngleTowardLink
	ld e,Enemy.angle
	ld (de),a
	ret
vitreous_stateD_half:
	;shoot projectile

	call ecom_decCounter2
	jr nz,++
	jr @endShoot
++
	; Play sound on 11th-to-last frame
	ld a,(hl)
	cp $0b
	ld a,SND_BEAM
	jp z,playSound
	ret nc

	; Spawn projectile every frame for 10 frames
	ld b,PART_BEAM
	call ecom_spawnProjectile
	ret nz

	ld e,Enemy.counter2
	ld a,(de)
	and $01
	ld l,Part.subid
	ld (hl),a
	ret



@endShoot:
	ld h,d
	ld l,Enemy.counter2
	ld (hl),48
	ld l,Enemy.state
	inc (hl)
	ret


; Delay before submerging again
vitreous_stateE:
	call vitreous_setAnimationBasedOnLink
	call ecom_decCounter2
	jr nz,vitreous_animate

	xor a
	call enemySetAnimation
	ld h,d
	ld l,Enemy.counter1
	ld (hl),60
	ld l,Enemy.state
	ld (hl),$0a
	ld l,Enemy.var3c
	ld a,(hl)
	add a
	dec a
	ld l,Enemy.counter2 ;counter2 = number of eyes * 2 - 1
	ld (hl),a
	jp vitreous_animate

; All eyes dead. Wait and shake for 64 rfames before following Link
vitreous_stateF:
	call vitreous_setAnimationBasedOnLink
	call ecom_decCounter2
	jr z,@gotoState10
	ld h,d
	ld l,Enemy.xh
	ld a,(wFrameCounter)
	and $03
	ld (hl),$78
	jp z,vitreous_animate
	ld (hl),$77
	jp vitreous_animate

@gotoState10
	call ecom_incState
	;set speedZ variable
	ld l,Enemy.speedZ
	ld a,$00
	ldi (hl),a
	ld (hl),$ff
	ret

vitreous_state10:
	call vitreous_setAnimationBasedOnLink
	call objectGetAngleTowardLink
	ld e,Enemy.angle
	ld (de),a

	call objectApplySpeed
	ld c,$20
	call objectUpdateSpeedZ_paramC
	jp nz,vitreous_animate

	; Landed on ground
	ld l,Enemy.speedZ
	ld a,<(-$1c0)
	ldi (hl),a
	ld (hl),>(-$1c0)
	ret

vitreous_dead:
	ld a,$01
	ld (wActiveTriggers),a

	ld e,Enemy.collisionType
	ld a,(de)
	or a
	jr z,@doneKillingChildren

	ld e,Enemy.var30
@killNextChild:
	ld a,(de)
	ld h,a
	ld l,e
	call ecom_killObjectH
	inc e
	ld a,e
	cp Enemy.var36
	jr c,@killNextChild

@doneKillingChildren:
	jp enemyBoss_dead

;Sets Vitreous animation so it "looks at Link"
vitreous_setAnimationBasedOnLink:
	call objectGetAngleTowardLink
	ld b,a
	cp $10
	ld a,$03
	jr c,@ready
	ld a,$01
	jr z,@ready
	ld a,$02
@ready:
	ld c,a
	ld a,b
	or a
	ld a,$01
	jr z,+
	ld a,c
+
	jp enemySetAnimation
