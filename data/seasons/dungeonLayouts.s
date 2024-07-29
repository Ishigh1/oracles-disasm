; Each 8 rows represents the layout of 1 floor of a dungeon. The label for each dungeon must be
; a multiple of 0x40 bytes away from the "dungeonLayoutStart" label, because the labels are actually
; converted to an index.
;
; If adding or removing floors from a dungeon, remember to update the "num floors" variable in
; "data/{game}/dungeonData.s".

dungeonLayoutDataStart:

dungeon00Layout:
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $02 $00 $00 $00 $00
	.db $00 $00 $04 $05 $06 $00 $00 $00
	.db $00 $00 $00 $01 $03 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

dungeon01Layout:
	.db $09 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $0a $0b $00 $00 $00 $00
	.db $00 $00 $00 $0c $00 $00 $00 $00
	.db $0d $0e $0f $10 $11 $12 $13 $00
	.db $00 $14 $15 $16 $17 $18 $00 $00
	.db $00 $00 $19 $1a $1b $00 $00 $00
	.db $00 $00 $00 $1c $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

dungeon02Layout:
	.db $1d $1e $1f $20 $00 $00 $00 $00
	.db $00 $00 $00 $21 $22 $23 $24 $00
	.db $00 $00 $00 $00 $25 $26 $27 $00
	.db $00 $00 $00 $00 $00 $28 $29 $00
	.db $00 $00 $2a $2b $00 $00 $2c $00
	.db $00 $2d $2e $2f $30 $31 $32 $00
	.db $00 $33 $34 $35 $36 $37 $00 $00
	.db $00 $00 $38 $39 $00 $00 $00 $00

dungeon03Layout:
	.db $3a $3b $3c $3d $00 $00 $00 $00
	.db $00 $00 $3e $00 $3f $00 $00 $00
	.db $00 $00 $00 $40 $00 $00 $00 $00
	.db $00 $41 $42 $43 $44 $45 $00 $00
	.db $00 $46 $47 $48 $49 $4a $00 $00
	.db $00 $00 $4b $00 $4c $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $4d $4e $4f $00 $00 $00
	.db $00 $50 $00 $00 $00 $51 $00 $00
	.db $00 $52 $00 $53 $00 $54 $00 $00
	.db $00 $55 $56 $57 $58 $59 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

dungeon04Layout:
	.db $5c $5d $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $5e $5f $60 $00 $00
	.db $00 $00 $61 $62 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $63 $64 $65 $00 $00
	.db $00 $66 $00 $67 $00 $00 $00 $00
	.db $00 $68 $69 $6a $6b $6c $6d $00
	.db $00 $00 $6e $6f $70 $71 $00 $00
	.db $00 $00 $00 $00 $72 $00 $00 $00
	.db $00 $00 $00 $73 $74 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $75 $76 $77 $78 $00
	.db $00 $79 $7a $7b $7c $00 $00 $00
	.db $00 $7d $7e $7f $80 $00 $00 $00
	.db $00 $00 $00 $81 $82 $83 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

dungeon05Layout:
	.db $84 $85 $86 $87 $88 $00 $00 $00
	.db $89 $8a $00 $8b $8c $00 $00 $00
	.db $00 $8d $8e $8f $90 $00 $00 $00
	.db $91 $92 $93 $00 $94 $95 $96 $00
	.db $00 $97 $98 $99 $9a $9b $9c $00
	.db $9d $9e $9f $a0 $a1 $a2 $00 $00
	.db $00 $a3 $a4 $a5 $00 $00 $00 $00
	.db $00 $a6 $a7 $a8 $a9 $00 $00 $00

dungeon06Layout:
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $aa $ab $ac $ad $ae $00 $00
	.db $00 $af $b0 $b1 $b2 $b3 $00 $00
	.db $00 $b4 $b5 $b6 $b7 $b8 $00 $00
	.db $00 $b9 $00 $ba $00 $bb $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $bc $bd $be $bf $00 $00 $00
	.db $00 $c0 $c1 $c2 $c3 $00 $00 $00
	.db $00 $c4 $c5 $c6 $c7 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $c8 $c9 $ca $00 $00 $00
	.db $00 $00 $cb $cc $cd $00 $00 $00
	.db $00 $00 $ce $cf $d0 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $d1 $d2 $00 $00 $00
	.db $00 $00 $00 $d3 $d4 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $d5 $00 $00 $00 $00
	.db $00 $00 $00 $d6 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

dungeon0bLayout:
	.db $20 $21 $00 $00 $22 $23 $00 $00
	.db $24 $25 $00 $00 $26 $27 $00 $00
	.db $00 $00 $28 $29 $00 $00 $00 $00
	.db $00 $00 $2a $2b $00 $00 $00 $00
	.db $2c $2d $00 $00 $2e $2f $00 $00
	.db $30 $31 $00 $00 $32 $33 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $34

dungeon07Layout:
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $35 $36 $37 $00 $00 $00
	.db $00 $38 $00 $39 $00 $3a $00 $00
	.db $00 $3b $3c $00 $3d $3e $00 $00
	.db $00 $00 $3f $00 $40 $00 $00 $00
	.db $00 $00 $41 $42 $43 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $44 $45 $46 $47 $48 $00 $00
	.db $00 $49 $00 $4a $00 $4b $00 $00
	.db $00 $00 $4c $4d $4e $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $4f $50 $51 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $52 $53 $54 $00 $00 $00
	.db $00 $55 $00 $56 $00 $57 $00 $00
	.db $00 $00 $58 $59 $5a $00 $00 $00
	.db $00 $00 $00 $5b $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

dungeon08Layout:
	.db $5c $5d $00 $5e $5f $00 $00 $00
	.db $60 $61 $62 $63 $64 $00 $00 $00
	.db $00 $00 $00 $65 $66 $00 $00 $00
	.db $00 $00 $00 $67 $68 $00 $00 $00
	.db $00 $69 $00 $6a $6b $00 $6c $00
	.db $00 $6d $6e $6f $70 $71 $72 $00
	.db $00 $00 $00 $73 $74 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

	.db $00 $75 $76 $77 $78 $79 $7a $00
	.db $00 $7b $00 $00 $00 $00 $7c $00
	.db $00 $7d $00 $7e $7f $00 $80 $00
	.db $00 $81 $82 $83 $84 $85 $86 $00
	.db $00 $87 $00 $88 $89 $00 $8a $00
	.db $00 $00 $8b $00 $00 $8c $00 $00
	.db $00 $00 $00 $8d $8e $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

dungeon09Layout:
	.db $90 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $91 $00 $00 $00 $00
	.db $00 $00 $00 $92 $00 $00 $00 $00
	.db $00 $00 $00 $93 $00 $00 $00 $00
	.db $00 $00 $00 $94 $00 $00 $00 $00
	.db $00 $00 $00 $95 $00 $00 $00 $00
	.db $00 $00 $96 $97 $98 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

dungeon0aLayout:
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $99 $9a $00 $00 $00 $00
	.db $00 $00 $00 $9b $00 $00 $00 $00
	.db $00 $00 $00 $9c $00 $00 $00 $00
	.db $00 $00 $00 $9d $9e $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00

