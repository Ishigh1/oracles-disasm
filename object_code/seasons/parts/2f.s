; ==================================================================================================
; PART_2f
; ==================================================================================================
partCode2f:
	ld e,$c4
	ld a,(de)
	or a
	ret nz
	inc a
	ld (de),a
	ld e,$cb
	ld a,(de)
	sub $02
	ld (de),a
	ld e,$cd
	ld a,(de)
	add $03
	ld (de),a
	ret
