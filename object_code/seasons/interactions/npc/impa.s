; ==================================================================================================
; INTERAC_IMPA
; ==================================================================================================
interactionCode9d:
	ld e,$44
	ld a,(de)
	rst_jumpTable
	.dw @state0
	.dw @state1
@state0:
	ld a,$01
	ld (de),a
	call interactionInitGraphics
	call objectSetVisible82

	ld hl,mainScripts.impaScript_givebombchus
	jp interactionSetScript

@state1:
	call interactionRunScript
	ld e,$42
	ld a,(de)
	rst_jumpTable
	.dw @@faceLinkAndAnimate
	.dw @@faceLinkAndAnimate
	.dw @@animateAsNPC
	.dw @@faceLinkAndAnimate
	.dw @@faceLinkAndAnimate
	.dw @@faceLinkAndAnimate
@@faceLinkAndAnimate:
	jp npcFaceLinkAndAnimate
@@animateAsNPC:
	jp interactionAnimateAsNpc
