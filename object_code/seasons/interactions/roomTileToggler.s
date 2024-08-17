; ==================================================================================================
; INTERAC_ROOM_TILE_TOGGLER
; ==================================================================================================
interactionCode61:
    ld e,Interaction.state
	ld a,(de)
	rst_jumpTable
	.dw @state0
	.dw @state1

@state0:
	ld a,$01
	ld (de),a
	ld a,(wSwitchState)
	ld e,Interaction.var03
	ld (de),a

@state1:
	ld a,(wSwitchState)
	ld b,a
	ld e,Interaction.var03
	ld a,(de)
	cp b
	ret z

	ld a,(wSwitchState)
	ld (de),a

	ld e,Interaction.subid
    ld a,(de)
	ld hl,@roomReplacements
	rst_addDoubleIndex
	ldi a,(hl)
	ld h,(hl)
	ld l,a

-
    ldi a,(hl)
    ld b,a

    cp $00
    jr nz,+
    ret

+
    ldi a,(hl)
    ld c,a
    ld a,(wSwitchState)
    and a,b
    jr z,+

; Off
    inc hl
    ldi a,(hl)
    jr ++

+
; On
    ldi a,(hl)
    inc hl

++
; Change tile
    push hl
    call setTile
    pop hl
    jr -


@roomReplacements:
    .dw @room40f
    .dw @room414

; Data format:
; b0: Bitmask to check. If bitmask & [room flags] is nonzero, the change is applied.
; b1: Original tile at that position
; b2: New tile to put at that position
; b3: Position of tile to change
@room40f:
    .db $01 $72 TILEINDEX_TRACK_HORIZONTAL  TILEINDEX_TRACK_TL
    .db $01 $78 TILEINDEX_TRACK_VERTICAL    TILEINDEX_TRACK_BL

    .db $02 $7A TILEINDEX_TRACK_VERTICAL    TILEINDEX_TRACK_BR

	.db $04 $5A TILEINDEX_TRACK_TL          TILEINDEX_TRACK_BL
	.db $04 $56 TILEINDEX_TRACK_HORIZONTAL  TILEINDEX_TRACK_TR

    .db $08 $3A TILEINDEX_TRACK_VERTICAL    TILEINDEX_TRACK_BR
    .db $08 $9A TILEINDEX_TRACK_VERTICAL    TILEINDEX_TRACK_TL
    
	.db $10 $9C TILEINDEX_TRACK_VERTICAL    TILEINDEX_TRACK_TR
    .db $00

@room414:
    .db $20 $4B TILEINDEX_TRACK_VERTICAL    TILEINDEX_TRACK_TL
    
    .db $40 $2B TILEINDEX_TRACK_VERTICAL    TILEINDEX_TRACK_HORIZONTAL
    
    .db $80 $27 TILEINDEX_TRACK_BR          TILEINDEX_TRACK_TR
    .db $00