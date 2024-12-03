; ==================================================================================================
; INTERAC_ZELDA
; ==================================================================================================
interactionCodead:
	ld e,Interaction.state
	ld a,(de)
	rst_jumpTable
	.dw zelda_state0
	.dw zelda_state1

zelda_state0:
	ld a,$01
	ld (de),a ; [state]
	call interactionInitGraphics
	call objectSetVisiblec2

	ld e,Interaction.subid
	ld a,(de)
	rst_jumpTable
	.dw @initSubid00
	.dw @commonInit
	.dw @commonInit
	.dw @initSubid03
	.dw @initSubid04
	.dw @commonInitWithExtraGraphics
	.dw @commonInit
	.dw @initSubid07
	.dw @initSubid08
	.dw @commonInit
	.dw @initSubid0a

@initSubid04:
	call getThisRoomFlags
	bit 7,(hl)
	jp nz,interactionDeleteAndUnmarkSolidPosition

	ld h,d
	ld l,Interaction.speed
	ld (hl),SPEED_100
	ld l,Interaction.angle
	ld (hl),$00

	xor a
	ld (wDisableLinkCollisionsAndMenu),a

	ld hl,wcc93
	set 7,(hl)

	ld a,(wScrollMode)
	and SCROLLMODE_01
	ret nz

	ld a,LINK_STATE_FORCE_MOVEMENT
	ld (wLinkForceState),a

.ifdef ROM_AGES
	ld a,$16
.else; ROM_SEASONS
	ld a,$1a
.endif
	ld (wLinkStateParameter),a

	ld hl,w1Link.direction
	ld a,(wScreenTransitionDirection)
	ldi (hl),a
	swap a
	rrca
	ld (hl),a

	ld h,d
	jp @commonInit

@initSubid03:
	ld bc,$4820
	call interactionSetPosition
	ld a,$01
	call interactionSetAnimation
	jp @commonInit

@initSubid07:
/*
	ld a,GLOBALFLAG_GOT_RING_FROM_ZELDA
	call checkGlobalFlag
	jp z,interactionDeleteAndUnmarkSolidPosition

	ld a,TREASURE_MAKU_SEED
	call checkTreasureObtained
	jp c,interactionDeleteAndUnmarkSolidPosition

	ld a,GLOBALFLAG_SAVED_NAYRU
	call checkGlobalFlag
	ld a,<TX_0606
	jr nz,@actAsGenericNpc
*/
	ld a,<TX_060a

@actAsGenericNpc:
	ld e,Interaction.textID
	ld (de),a
	inc e
	ld a,>TX_0600
	ld (de),a
	ld hl,mainScripts.genericNpcScript
	jp interactionSetScript

@initSubid08:
	call checkIsLinkedGame
	jp z,interactionDeleteAndUnmarkSolidPosition

	ld a,GLOBALFLAG_PRE_BLACK_TOWER_CUTSCENE_DONE
	call checkGlobalFlag
	jp z,interactionDeleteAndUnmarkSolidPosition

	ld a,GLOBALFLAG_FLAME_OF_DESPAIR_LIT
	call checkGlobalFlag
	jp nz,interactionDeleteAndUnmarkSolidPosition

	ld a,<TX_060b
	jr @actAsGenericNpc

@initSubid0a:
	call checkIsLinkedGame
	jp z,interactionDeleteAndUnmarkSolidPosition

	ld a,TREASURE_MAKU_SEED
	call checkTreasureObtained
	jp nc,interactionDeleteAndUnmarkSolidPosition

	ld a,GLOBALFLAG_PRE_BLACK_TOWER_CUTSCENE_DONE
	call checkGlobalFlag
	jp nz,interactionDeleteAndUnmarkSolidPosition

	ld a,<TX_060a
	jr @actAsGenericNpc

@initSubid00:
	call getThisRoomFlags
	bit 7,a
	jr z,@commonInitWithExtraGraphics
	ld a,$01
	ld (wDisableScreenTransitions),a
	ld a,(wActiveMusic)
	or a
	jr z,@commonInitWithExtraGraphics
	xor a
	ld (wActiveMusic),a
	ld a,MUS_ZELDA_SAVED
	call playSound

@commonInitWithExtraGraphics:
	call interactionLoadExtraGraphics

@commonInit:
	call zelda_loadScript


zelda_state1:
	ld e,$42
	ld a,(de)
	rst_jumpTable
	.dw @animateAndRunScript
	.dw @animateAndRunScript
	.dw @runSubid2
	.dw @animateAndRunScript
	.dw @runSubid4
	.dw @animateAndRunScript
	.dw @animateAndRunScript
	.dw @faceLinkAndRunScript
	.dw @faceLinkAndRunScript
	.dw @animateAndRunScript
	.dw @faceLinkAndRunScript

@animateAndRunScript:
	call interactionAnimate
	jp interactionRunScript

@runSubid2:
	ld e,Interaction.var39
	ld a,(de)
	or a
	call z,interactionAnimate
	jp interactionRunScript

@runSubid4:
	ld e,Interaction.substate
	ld a,(de)
	rst_jumpTable
	.dw @@substate00
	.dw @faceLinkAndRunScript

@@substate00:
	call interactionRunScript
	jp nc,interactionAnimateBasedOnSpeed

	
	call getThisRoomFlags
	set 7,(hl)
	dec l
	set 7,(hl)
	call setDeathRespawnPoint
	xor a
	ld (wDisabledObjects),a
	ld (wMenuDisabled),a
	call interactionIncSubstate
	ld a,<TX_060a
	jp zelda_state0@actAsGenericNpc

@faceLinkAndRunScript:
	call interactionRunScript
	jp npcFaceLinkAndAnimate

;;
zelda_loadScript:
	ld e,Interaction.subid
	ld a,(de)
	ld hl,@scriptTable
	rst_addDoubleIndex
	ldi a,(hl)
	ld h,(hl)
	ld l,a
	jp interactionSetScript

@scriptTable:
	.dw mainScripts.zeldaSubid00Script
	.dw mainScripts.zeldaSubid01Script
	.dw mainScripts.zeldaSubid02Script
	.dw mainScripts.zeldaSubid03Script
	.dw mainScripts.zeldaSubid04Script
	.dw mainScripts.zeldaSubid05Script
	.dw mainScripts.zeldaSubid06Script
	.dw mainScripts.stubScript
	.dw mainScripts.stubScript
	.dw mainScripts.zeldaSubid09Script
	.dw mainScripts.stubScript
