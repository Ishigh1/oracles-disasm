;;
; ITEM_TEMPORARY_COLLISION
itemCode2c:
	ld e,Item.counter1
	ld a,(de)
	inc a
	cp $05
	jp z,itemDelete
	ld (de),a

	ld e,Item.state
	ld a,(de)
	or a
	ret nz

	call itemLoadAttributesAndGraphics
	call itemIncState
	ret