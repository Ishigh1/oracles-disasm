; ==============================================================================
; INTERACID_COMPANION_SPAWNER
; ==============================================================================
.ifdef ROM_AGES
interactionCode67:
.else
interactionCode5f:
.endif
	ld e,Interaction.subid
	ld a,(de)
	cp $06
	jr z,@label_0a_045
	ld a,(de)
	rlca
	jr c,@fluteCall
	ld a,(w1Companion.enabled)
	or a
	jp nz,@deleteSelf

@label_0a_045:
	ld a,(de)
	rst_jumpTable
	.dw @subid00
	.dw @subid01
	.dw @subid02
	.dw @subid03
	.dw @subid04
	.dw @subid05
.ifdef ROM_SEASONS
	.dw @subid06
.endif

@fluteCall:
	ld a,(w1Companion.enabled)
	or a
	jr z,@label_0a_047

	; If there's already something in the companion slot, continue if it's the
	; minecart or anything past moosh (maple, raft).
	; But there's a check later that will prevent the companion from spawning if this
	; slot is in use...
	ld a,(w1Companion.id)
	cp SPECIALOBJECTID_MOOSH+1
	jr nc,@label_0a_047
	cp SPECIALOBJECTID_MINECART
	jp nz,@deleteSelf

@label_0a_047:
	ld a,(wTilesetFlags)
.ifdef ROM_AGES
	and (TILESETFLAG_PAST | TILESETFLAG_OUTDOORS)
.else
	and (TILESETFLAG_SUBROSIA | TILESETFLAG_OUTDOORS)
.endif
	cp TILESETFLAG_OUTDOORS
	jp nz,@deleteSelf

	; In the past or indoors; "Your song just echoes..."
	ld bc,TX_510f
	ld a,(wFluteIcon)
	or a
	jp z,@showTextAndDelete

	; If in the present, check if companion is callable in this room
	ld a,(wActiveRoom)
	ld hl,companionCallableRooms
	call checkFlag
	jp z,@fluteSongFellFlat

	; Don't call companion if the slot is in use already
	ld a,(w1Companion.enabled)
	or a
	jp nz,@deleteSelf

	; [var3e/var3f] = Link's position
	ld e,Interaction.var3e
	ld hl,w1Link.yh
	ldi a,(hl)
	and $f0
	ld (de),a
	inc l
	inc e
	ld a,(hl)
	swap a
	and $0f
	ld (de),a

	; Try various things to determine where companion should enter from?

	; Try from top at Link's x position
	ld hl,wRoomCollisions
	rst_addAToHl
	call @checkVerticalCompanionSpawnPosition
	ld b,-$08
	ld l,c
	ld h,$10
	ld a,DIR_DOWN
	jr z,@setCompanionDestination

	; Try from bottom at Link's x
	ld e,Interaction.var3f
	ld a,(de)
	ld hl,wRoomCollisions+$60
	rst_addAToHl
	call @checkVerticalCompanionSpawnPosition
	ld b,SMALL_ROOM_HEIGHT*$10+8
	ld l,c
	ld h,SMALL_ROOM_HEIGHT*$10-$10
	ld a,DIR_UP
	jr z,@setCompanionDestination

	; Try from right at Link's y
	ld e,Interaction.var3e
	ld a,(de)
	ld hl,wRoomCollisions+$08
	rst_addAToHl
	call @checkHorizontalCompanionSpawnPosition
	ld c,SMALL_ROOM_WIDTH*$10+8
	ld h,b
	ld l,SMALL_ROOM_WIDTH*$10-$10
	ld a,DIR_LEFT
	jr z,@setCompanionDestination

	; Try from left at Link's y
	ld e,Interaction.var3e
	ld a,(de)
	ld hl,wRoomCollisions
	rst_addAToHl
	call @checkHorizontalCompanionSpawnPosition
	ld c,-$08
	ld h,b
	ld l,$10
	ld a,DIR_RIGHT
	jr z,@setCompanionDestination

	; Try from top at range of x positions
	ld hl,wRoomCollisions+$03
	call @checkCompanionSpawnColumnRange
	ld b,-$08
	ld l,c
	ld h,$10
	ld a,DIR_DOWN
	jr nz,@setCompanionDestination

	; Try from bottom at range of x positions
	ld hl,wRoomCollisions+$63
	call @checkCompanionSpawnColumnRange
	ld b,SMALL_ROOM_HEIGHT*$10+8
	ld l,c
	ld h,SMALL_ROOM_HEIGHT*$10-$10
	ld a,DIR_UP
	jr nz,@setCompanionDestination

	; Try from right at range of y positions
	ld hl,wRoomCollisions+$28
	call @checkCompanionSpawnRowRange
	ld c,SMALL_ROOM_WIDTH*$10+8
	ld h,b
	ld l,SMALL_ROOM_WIDTH*$10-$10
	ld a,DIR_LEFT
	jr nz,@setCompanionDestination

	; Try from left at range of y positions
	ld hl,wRoomCollisions+$20
	call @checkCompanionSpawnRowRange
	ld c,$f8
	ld h,b
	ld l,$10
	ld a,DIR_RIGHT
	jr z,@fluteSongFellFlat


; @param	a	Direction companion should move in
; @param	bc	Initial Y/X position
; @param	hl	Y/X destination
@setCompanionDestination:
	push de
	push hl
	pop de
	ld hl,wLastAnimalMountPointY
.ifdef ROM_AGES
	ld (hl),d
	inc l
	ld (hl),e
.else
	ldh (<hFF8B),a
	ld a,d
	ldi (hl),a
	ld a,e
	ld (hl),a
	ldh a,(<hFF8B)
.endif
	pop de

	ld hl,w1Companion.direction
	ldi (hl),a
	swap a
.ifdef ROM_AGES
	rrca
.else
	srl a
.endif
	ldi (hl),a

	inc l
	ld (hl),b
	ld l,SpecialObject.xh
	ld (hl),c

	ld l,SpecialObject.enabled
	inc (hl)
	inc l
	ld a,(wAnimalCompanion)
	ldi (hl),a ; [SpecialObject.id]

	; State $0c = entering screen from flute call
	ld l,SpecialObject.state
	ld a,$0c
	ld (hl),a
	jr @deleteSelf


@fluteSongFellFlat:
	ld bc,TX_510c

@showTextAndDelete:
	ld a,(wTextIsActive)
	or a
	call z,showText

@deleteSelf:
	jp interactionDelete


.ifdef ROM_AGES

; Moosh being attacked by ghosts
@subid00:
	; RANDO: Skip checks for D2 essence, having cheval rope, talking to cheval
	ld hl,wMooshState
	jr @loadCompanionPresetIfHasntLeft


; Moosh saying goodbye after getting cheval rope
@subid01:
	ld hl,wMooshState
	ld a,$40
	and (hl)
	jr nz,@deleteSelf
	ld a,TREASURE_CHEVAL_ROPE
	call checkTreasureObtained
	jr c,@loadCompanionPresetIfHasntLeft

@deleteSelf2:
	jr @deleteSelf


; Dimitri being attacked by hungry tokays
@subid03:
	ld hl,wDimitriState

	; RANDO: Skip essence check.
	/*
	ld a,(wEssencesObtained)
	bit 2,a
	jr z,@deleteSelf
	*/

	jr @loadCompanionPresetIfHasntLeft


; Ricky looking for gloves
@subid02:
	; RANDO: Make Ricky spawn in if you have his gloves, instead of checking if you gave the
	; rope to rafton.
	ld a,(wObtainedTreasureFlags + TREASURE_RICKY_GLOVES/8)
	and 1<<(TREASURE_RICKY_GLOVES&7)
	jr z,@deleteSelf

	ld hl,wRickyState
	jr @loadCompanionPresetIfHasntLeft


; Companion lost in forest
@subid04:
	ld a,GLOBALFLAG_COMPANION_LOST_IN_FOREST
	call checkGlobalFlag
	jr z,@deleteSelf
	jr @label_0a_052


; Cutscene outside forest where you get the flute
@subid05:
	ld a,GLOBALFLAG_SAVED_COMPANION_FROM_FOREST
	call checkGlobalFlag
	jr z,@deleteSelf
@label_0a_052:
	ld a,GLOBALFLAG_GOT_FLUTE
	call checkGlobalFlag
	jr nz,@deleteSelf
	jr @loadCompanionPreset

.else; ROM_SEASONS

@subid05:
	ld hl,wMooshState
	; RANDO: Disable essence check causing Moosh to leave
	;ld a,(wEssencesObtained)
	;bit 3,a
	;jp z,@loadCompanionPresetIfHasntLeft
	jp @loadCompanionPresetIfHasntLeft

	set 6,(hl)
	jr @deleteSelf

; dimitri after being saved
@subid04:
	; RANDO: Disable essence check for sunken city event
	;ld a,(wEssencesObtained)
	;bit 2,a
	;jr z,@deleteSelf

	ld a,(wDimitriState)
	and $20
	jr z,@deleteSelf

	; RANDO: Check wFluteIcon instead of wAnimalCompanion (dimitri event in sunken city will
	; trigger before getting his flute)
	;ld a,(wAnimalCompanion)
	;cp SPECIALOBJECTID_DIMITRI
	ld a,(wFluteIcon)
	cp $02

	jr z,@deleteSelf

	ld hl,wDimitriState

	; RANDO: Don't remove dimitri after getting flippers
	;ld a,TREASURE_FLIPPERS
	;call checkTreasureObtained
	;jr nc,@loadCompanionPresetIfHasntLeft
	jr @loadCompanionPresetIfHasntLeft

	set 6,(hl)
	jr @deleteSelf

@subid02:
	ld a,(wAnimalCompanion)
	cp SPECIALOBJECTID_DIMITRI
	jr nz,@deleteSelf
	ld hl,wDimitriState
	jr @deleteSelfIfBit7OfAnimalStateSet

@subid01:
	ld hl,wRickyState

	; RANDO: Ignore essence check for spawning Ricky
	;ld a,(wEssencesObtained)
	;bit 1,a
	;jr z,@deleteSelf

	ld a,(wAnimalCompanion)
	cp SPECIALOBJECTID_RICKY
	jr z,@deleteSelfIfBit7OfAnimalStateSet
	ld a,(hl)
	bit 6,a
	jr z,@loadCompanionPresetIfHasntLeft
	jr @deleteSelf

@subid06:
	ld hl,wRickyState
	ld a,(wAnimalCompanion)
	cp SPECIALOBJECTID_RICKY
	jr z,@deleteSelf2
	ld a,(wFluteIcon)
	or a
	jr z,@deleteSelf
	set 6,(hl)

@deleteSelf2:
	jr @deleteSelf

@subid03:
	ld a,(wAnimalCompanion)
	cp SPECIALOBJECTID_MOOSH
	jr nz,@deleteSelf
	ld hl,wMooshState
	ld a,(hl)
	and $a0
	jr nz,@deleteSelf

@deleteSelfIfBit7OfAnimalStateSet:
	bit 7,(hl)
	jr nz,@deleteSelf2
.endif


@loadCompanionPresetIfHasntLeft:
	; This bit of the companion's state is set if he's left after his sidequest
	ld a,(hl)
	and $40
	jr nz,@deleteSelf2

; Load a companion's ID and position from a table of presets based on subid.
.ifdef ROM_SEASONS
@subid00:
.endif
@loadCompanionPreset:
	ld e,Interaction.subid
	ld a,(de)
	add a
	ld hl,@presetCompanionData
	rst_addDoubleIndex

	ld bc,w1Companion.enabled
	ld a,$01
	ld (bc),a

	; Get companion, either from the table, or from wAnimalCompanion
	inc c
	ldi a,(hl)
.ifdef ROM_AGES
	or a
	jr nz,+
	ld a,(wAnimalCompanion)
+
.endif
	ld (bc),a

	; Set Y/X
	ld c,SpecialObject.yh
	ldi a,(hl)
	ld (bc),a
	ld (wLastAnimalMountPointY),a
	ld c,SpecialObject.xh
	ldi a,(hl)
	ld (bc),a
	ld (wLastAnimalMountPointX),a

	xor a
	ld (wRememberedCompanionId),a
	jr @deleteSelf2

;;
; Check if the first 2 tiles near the edge of the screen are walkable for a companion.
;
; RANDO: Modified this function & the version below to allow wide bridge tiles & stairs to be valid
; tiles for companions to spawn on (mainly for the seasons D1 entrance screen).
;
; @param	hl	Address in wRoomCollisions to start at
; @param[out]	bc	Position to spawn at
; @param[out]	zflag	z if the companion can spawn from there
@checkVerticalCompanionSpawnPosition:
	ld b,$10
	jr ++

;;
; @param	hl	Address in wRoomCollisions to start at
; @param[out]	bc	Position to spawn at
; @param[out]	zflag	z if the companion can spawn from there
@checkHorizontalCompanionSpawnPosition:
	ld b,$01
++
	ld a,(hl)
	call checkCompanionCanSpawnOnCollision
	ret nz
	ld a,l
	add b
	ld l,a
	ld a,(hl)
	call checkCompanionCanSpawnOnCollision
	ld a,l
	ret nz
	call convertShortToLongPosition
	xor a
	ret

;;
; Checks the given column and up to the following 3 after for if the companion can spawn
; there.
;
; @param	hl	Starting position to check (also checks 3 rows/columns after)
; @param[out]	bc	Position to spawn at
; @param[out]	zflag	nz if valid position to spawn from found
@checkCompanionSpawnColumnRange:
	push de
	ld b,$01
	ld e,$10
	jr ++

;;
; @param	hl	Starting position to check (also checks 3 rows/columns after)
; @param[out]	bc	Position to spawn at
; @param[out]	zflag	nz if valid position to spawn from found
@checkCompanionSpawnRowRange:
	push de
	ld b,$10
	ld e,$01
++
	ld c,$04

@@nextRowOrColumn:
	ld a,(hl)
	call checkCompanionCanSpawnOnCollision2
	jr z,@@tryThisRowOrColumn

@@resumeSearch:
	ld a,l
	add b
	ld l,a
	dec c
	jr nz,@@nextRowOrColumn

	pop de
	ret

@@tryThisRowOrColumn:
	ld a,l
	add e
	ld l,a
	ld a,(hl)
	call checkCompanionCanSpawnOnCollision2
	ld a,l
	jr z,@@foundRowOrColumn
	sub e
	ld l,a
	jr @@resumeSearch

@@foundRowOrColumn:
	call convertShortToLongPosition
	or d
	pop de
	ret


; Data format:
;   b0: Companion ID (or $00 to use wAnimalCompanion)
;   b1: Y-position to spawn at
;   b2: X-position to spawn at
;   b3: Unused
@presetCompanionData:
.ifdef ROM_AGES
	.db SPECIALOBJECTID_MOOSH,   $28, $58, $00 ; $00 == [subid]
	.db SPECIALOBJECTID_MOOSH,   $48, $38, $00 ; $01
	.db SPECIALOBJECTID_RICKY,   $40, $50, $00 ; $02
	.db SPECIALOBJECTID_DIMITRI, $48, $30, $00 ; $03
	.db $00,                     $58, $50, $00 ; $04
	.db $00,                     $48, $68, $00 ; $05
.else
	.db SPECIALOBJECTID_MAPLE,   $18, $b8, $00
	.db SPECIALOBJECTID_RICKY,   $38, $50, $00
	.db SPECIALOBJECTID_DIMITRI, $18, $5f, $00
	.db SPECIALOBJECTID_MOOSH,   $18, $30, $00
	.db SPECIALOBJECTID_DIMITRI, $28, $60, $00
	.db SPECIALOBJECTID_MOOSH,   $58, $40, $00
.endif


.include "build/data/companionCallableRooms.s"


;;
; RANDO: Allow companions to spawn on wide bridges & stairs.
;
; @param	a	Collision value
; @param	b	$01 for horizontal, $10 for vertical
; @param[out]	zflag	z if the companion can spawn on it
checkCompanionCanSpawnOnCollision:
	or a
	ret z
	cp SPECIALCOLLISION_STAIRS
	ret z
	bit 0,b
	jr z,@vertical

@horizontal:
	cp SPECIALCOLLISION_HORIZONTAL_BRIDGE_LEFT
	ret z
	cp SPECIALCOLLISION_HORIZONTAL_BRIDGE_RIGHT
	ret

@vertical:
	cp SPECIALCOLLISION_VERTICAL_BRIDGE_LEFT
	ret z
	cp SPECIALCOLLISION_VERTICAL_BRIDGE_RIGHT
	ret

;;
checkCompanionCanSpawnOnCollision2:
	push bc
	ld b,e
	call checkCompanionCanSpawnOnCollision
	pop bc
	ret
