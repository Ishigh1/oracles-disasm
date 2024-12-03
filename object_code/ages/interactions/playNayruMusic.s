; ==================================================================================================
; INTERAC_PLAY_NAYRU_MUSIC
; ==================================================================================================
interactionCode2f:
/*
	ld a,GLOBALFLAG_INTRO_DONE
	call checkGlobalFlag
	jp nz,interactionDelete
	ld hl,wActiveMusic
	ld a,MUS_NAYRU
	cp (hl)
	jr z,+

	ld (hl),a
	call playSound
+
	ld a,$02
	call setMusicVolume
	jp interactionDelete
*/
	call getThisRoomFlags
	bit 7,(hl)
	jp z,interactionDelete
	ld hl,wActiveMusic
	ld a,MUS_ROOM_OF_RITES
	cp (hl)
	jr z,+

	ld (hl),a
	call playSound
+
	;ld a,$02
	;call setMusicVolume
	jp interactionDelete
