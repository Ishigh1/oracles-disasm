; Each warp source (warpSources.s) contains an index for a "warp destination". These are defined in
; this file.
;
; Data format for m_WarpDest:
;   Param 1: Room index to warp to. (Group is implicitly known from which table it's in.)
;   Param 2: Y/X position to spawn at.
;   Param 3: Parameter. What this does depends on the transition type (ie. walk in from top or
;            bottom of screen)
;   Param 4: Transition dest type (see constants/common/transitions.s).

warpDestTable:
	.dw group0WarpDestTable
	.dw group1WarpDestTable
	.dw group2WarpDestTable
	.dw group3WarpDestTable
	.dw group4WarpDestTable
	.dw group5WarpDestTable
	.dw group6WarpDestTable
	.dw group7WarpDestTable

group0WarpDestTable:
	m_WarpDest $d4 $54 $0 $1
	m_WarpDest $96 $44 $0 $1
	m_WarpDest $8d $24 $0 $1
	m_WarpDest $60 $25 $0 $1
	m_WarpDest $1d $13 $0 $1
	m_WarpDest $8a $25 $0 $1
	m_WarpDest $00 $34 $0 $1
	m_WarpDest $d0 $34 $0 $1
	m_WarpDest $03 $45 $0 $e
	m_WarpDest $00 $44 $0 $1
	m_WarpDest $00 $00 $0 $1
	m_WarpDest $88 $13 $0 $1
	m_WarpDest $b3 $02 $0 $1
	m_WarpDest $b6 $11 $0 $1
	m_WarpDest $c5 $11 $0 $1
	m_WarpDest $c5 $14 $0 $1
	m_WarpDest $c8 $44 $0 $1
	m_WarpDest $d7 $43 $0 $1
	m_WarpDest $e8 $45 $0 $1
	m_WarpDest $f6 $24 $0 $1
	m_WarpDest $f6 $26 $0 $1
	m_WarpDest $b5 $18 $0 $1
	m_WarpDest $f9 $33 $0 $1
	m_WarpDest $f9 $25 $0 $1
	m_WarpDest $e6 $45 $0 $1
	m_WarpDest $d9 $ff $f $3
	m_WarpDest $9a $33 $0 $1
	m_WarpDest $b0 $35 $0 $1
	m_WarpDest $1e $54 $0 $1
	m_WarpDest $b9 $22 $0 $1
	m_WarpDest $25 $22 $0 $1
	m_WarpDest $c6 $ff $0 $4
	m_WarpDest $a3 $42 $0 $1
	m_WarpDest $78 $36 $0 $1
	m_WarpDest $62 $34 $0 $1
	m_WarpDest $62 $27 $0 $1
	m_WarpDest $60 $21 $0 $1
	m_WarpDest $7d $12 $0 $1
	m_WarpDest $8d $18 $0 $4
	m_WarpDest $8e $12 $0 $4
	m_WarpDest $8e $43 $0 $1
	m_WarpDest $8e $48 $0 $1
	m_WarpDest $da $65 $0 $1
	m_WarpDest $ea $15 $0 $1
	m_WarpDest $ea $07 $0 $1
	m_WarpDest $7f $47 $0 $1
	m_WarpDest $4f $12 $0 $1
	m_WarpDest $1b $27 $0 $1
	m_WarpDest $0b $28 $0 $1
	m_WarpDest $1c $11 $0 $1
	m_WarpDest $0f $15 $0 $1
	m_WarpDest $0f $55 $0 $1
	m_WarpDest $1f $37 $0 $1
	m_WarpDest $aa $37 $0 $1
	m_WarpDest $16 $08 $0 $1
	m_WarpDest $06 $13 $0 $1
	m_WarpDest $06 $16 $0 $1
	m_WarpDest $07 $13 $0 $1
	m_WarpDest $04 $27 $0 $1
	m_WarpDest $15 $04 $0 $1
	m_WarpDest $18 $17 $0 $1
	m_WarpDest $28 $13 $0 $1
	m_WarpDest $39 $11 $0 $1
	m_WarpDest $09 $26 $0 $1
	m_WarpDest $19 $06 $0 $1
	m_WarpDest $19 $08 $0 $1
	m_WarpDest $19 $22 $0 $1
	m_WarpDest $19 $57 $0 $1
	m_WarpDest $29 $17 $0 $1
	m_WarpDest $d2 $24 $0 $1
	m_WarpDest $d2 $16 $0 $1
	m_WarpDest $43 $18 $0 $1
	m_WarpDest $4d $11 $0 $1
	m_WarpDest $3d $66 $0 $1
	m_WarpDest $4d $15 $0 $1
	m_WarpDest $02 $18 $0 $1
	m_WarpDest $10 $61 $0 $1
	m_WarpDest $5e $44 $0 $1
	m_WarpDest $3f $57 $0 $1
	m_WarpDest $5d $46 $0 $1
	m_WarpDest $6d $32 $0 $1
	m_WarpDest $6f $57 $0 $1
	m_WarpDest $f7 $33 $0 $1
	m_WarpDest $5b $33 $0 $1
	m_WarpDest $5b $35 $0 $1
	m_WarpDest $e2 $66 $0 $1
	m_WarpDest $ee $55 $0 $1
	m_WarpDest $dc $16 $0 $1
	m_WarpDest $e0 $14 $0 $1
	m_WarpDest $87 $44 $0 $1
	m_WarpDest $87 $31 $0 $1
	m_WarpDest $31 $14 $0 $1
	m_WarpDest $e1 $47 $0 $1
	m_WarpDest $f1 $06 $0 $1
	m_WarpDest $fd $47 $0 $1
	m_WarpDest $ff $36 $0 $1
	m_WarpDest $bf $15 $0 $1
	m_WarpDest $bf $15 $0 $1
	m_WarpDest $cc $11 $0 $1
	m_WarpDest $51 $56 $0 $1
	m_WarpDest $c2 $07 $0 $1
	m_WarpDest $a7 $28 $0 $1
	m_WarpDest $d3 $06 $0 $1
	m_WarpDest $1e $12 $0 $1
	m_WarpDest $1d $18 $0 $1
	m_WarpDest $28 $52 $0 $1
	m_WarpDest $66 $55 $0 $1
	m_WarpDest $97 $23 $0 $1
	m_WarpDest $d2 $12 $0 $1
	m_WarpDest $f9 $62 $0 $1
	m_WarpDest $02 $18 $0 $1
	m_WarpDest $8f $32 $0 $1
	m_WarpDest $a4 $56 $0 $1
	m_WarpDest $57 $32 $0 $1
	m_WarpDest $69 $65 $0 $1
	m_WarpDest $79 $48 $0 $1
	m_WarpDest $59 $55 $0 $1
	m_WarpDest $5a $54 $0 $1
	m_WarpDest $49 $17 $0 $1
	m_WarpDest $d7 $14 $0 $1
	m_WarpDest $57 $15 $0 $1
	m_WarpDest $a6 $27 $0 $1
	m_WarpDest $7e $11 $0 $1
	m_WarpDest $b6 $55 $0 $4

group1WarpDestTable:
	m_WarpDest $00 $23 $0 $1
	m_WarpDest $03 $67 $0 $1
	m_WarpDest $04 $67 $0 $1
	m_WarpDest $11 $31 $0 $1
	m_WarpDest $58 $25 $0 $1
	m_WarpDest $58 $52 $0 $1
	m_WarpDest $05 $24 $0 $1
	m_WarpDest $57 $22 $0 $1
	m_WarpDest $53 $63 $0 $1
	m_WarpDest $4a $34 $0 $1
	m_WarpDest $13 $27 $0 $1
	m_WarpDest $20 $32 $0 $1
	m_WarpDest $72 $24 $0 $1
	m_WarpDest $24 $24 $0 $1
	m_WarpDest $23 $48 $0 $1
	m_WarpDest $33 $46 $0 $1
	m_WarpDest $44 $43 $0 $1
	m_WarpDest $45 $43 $0 $e
	m_WarpDest $26 $56 $0 $1
	m_WarpDest $51 $28 $0 $1
	m_WarpDest $52 $31 $0 $1
	m_WarpDest $49 $65 $0 $1
	m_WarpDest $5a $24 $0 $1
	m_WarpDest $22 $32 $0 $1
	m_WarpDest $72 $32 $0 $1
	m_WarpDest $72 $53 $0 $1
	m_WarpDest $12 $58 $0 $1
	m_WarpDest $35 $43 $0 $1
	m_WarpDest $35 $46 $0 $1
	m_WarpDest $74 $27 $0 $1
	m_WarpDest $54 $64 $0 $1
	m_WarpDest $28 $55 $0 $1
	m_WarpDest $4a $44 $0 $1
	m_WarpDest $1a $44 $0 $1
	m_WarpDest $09 $45 $0 $e
	m_WarpDest $28 $43 $0 $1
	m_WarpDest $08 $53 $0 $1
	m_WarpDest $0a $23 $0 $1
	m_WarpDest $2a $47 $0 $1

group2WarpDestTable:
	m_WarpDest $0b $ff $9 $3
	m_WarpDest $0c $ff $9 $3
	m_WarpDest $7b $ff $9 $3
	m_WarpDest $2b $ff $9 $3
	m_WarpDest $2c $ff $9 $3
	m_WarpDest $2d $ff $9 $3
	m_WarpDest $5b $ff $9 $3
	m_WarpDest $5c $ff $9 $3
	m_WarpDest $5d $ff $9 $3
	m_WarpDest $5e $ff $9 $3
	m_WarpDest $0b $44 $0 $1
	m_WarpDest $0c $44 $0 $1
	m_WarpDest $7b $36 $0 $1
	m_WarpDest $2b $36 $0 $1
	m_WarpDest $2c $36 $0 $1
	m_WarpDest $2d $36 $0 $1
	m_WarpDest $5b $36 $0 $1
	m_WarpDest $5c $36 $0 $1
	m_WarpDest $5d $36 $0 $1
	m_WarpDest $5e $36 $0 $1
	m_WarpDest $0b $44 $0 $1
	m_WarpDest $0c $44 $0 $1
	m_WarpDest $6b $56 $0 $1
	m_WarpDest $1b $56 $0 $1
	m_WarpDest $1c $56 $0 $1
	m_WarpDest $1d $56 $0 $1
	m_WarpDest $4b $56 $0 $1
	m_WarpDest $4c $56 $0 $1
	m_WarpDest $4d $56 $0 $1
	m_WarpDest $4e $56 $0 $1
	m_WarpDest $0b $44 $0 $1
	m_WarpDest $0c $44 $0 $1
	m_WarpDest $6b $56 $0 $1
	m_WarpDest $1b $06 $0 $1
	m_WarpDest $1c $06 $0 $1
	m_WarpDest $1d $06 $0 $1
	m_WarpDest $4b $06 $0 $1
	m_WarpDest $4c $06 $0 $1
	m_WarpDest $4d $06 $0 $1
	m_WarpDest $4d $06 $0 $1
	m_WarpDest $0b $44 $0 $1
	m_WarpDest $0c $44 $0 $1
	m_WarpDest $6b $56 $0 $1
	m_WarpDest $1b $56 $0 $1
	m_WarpDest $1c $56 $0 $1
	m_WarpDest $1d $56 $0 $1
	m_WarpDest $3b $53 $0 $1
	m_WarpDest $3c $53 $0 $1
	m_WarpDest $3d $53 $0 $1
	m_WarpDest $3e $53 $0 $1
	m_WarpDest $5e $67 $0 $4
	m_WarpDest $5e $67 $0 $4
	m_WarpDest $5e $67 $0 $4
	m_WarpDest $5e $67 $0 $4
	m_WarpDest $5e $67 $0 $4
	m_WarpDest $5e $67 $0 $4
	m_WarpDest $5e $67 $0 $4
	m_WarpDest $5e $67 $0 $4
	m_WarpDest $5e $67 $0 $4
	m_WarpDest $5e $67 $0 $4

group3WarpDestTable:
	m_WarpDest $80 $ff $9 $3
	m_WarpDest $c0 $20 $0 $4
	m_WarpDest $82 $ff $9 $3
	m_WarpDest $83 $ff $9 $3
	m_WarpDest $84 $ff $9 $3
	m_WarpDest $85 $ff $9 $3
	m_WarpDest $88 $ff $9 $3
	m_WarpDest $89 $f3 $9 $3
	m_WarpDest $8a $ff $9 $3
	m_WarpDest $8a $11 $0 $4
	m_WarpDest $8b $11 $0 $4
	m_WarpDest $8b $61 $0 $4
	m_WarpDest $82 $ff $0 $3
	m_WarpDest $8c $61 $0 $4
	m_WarpDest $8c $68 $0 $4
	m_WarpDest $8d $ff $9 $3
	m_WarpDest $8d $11 $0 $4
	m_WarpDest $8d $18 $0 $4
	m_WarpDest $8d $61 $0 $4
	m_WarpDest $8f $ff $9 $3
	m_WarpDest $90 $ff $9 $3
	m_WarpDest $91 $ff $9 $3
	m_WarpDest $92 $ff $9 $3
	m_WarpDest $93 $ff $9 $3
	m_WarpDest $94 $ff $9 $3
	m_WarpDest $95 $18 $0 $4
	m_WarpDest $96 $ff $9 $3
	m_WarpDest $97 $f3 $9 $3
	m_WarpDest $98 $61 $0 $1
	m_WarpDest $99 $ff $9 $3
	m_WarpDest $9a $18 $0 $4
	m_WarpDest $9b $68 $0 $4
	m_WarpDest $9c $ff $9 $3
	m_WarpDest $9d $ff $9 $3
	m_WarpDest $9e $f7 $9 $3
	m_WarpDest $9f $ff $9 $3
	m_WarpDest $a0 $ff $9 $3
	m_WarpDest $a1 $ff $9 $3
	m_WarpDest $a2 $f3 $9 $3
	m_WarpDest $a3 $ff $9 $3
	m_WarpDest $a3 $04 $0 $7
	m_WarpDest $a4 $ff $9 $3
	m_WarpDest $a5 $f3 $9 $3
	m_WarpDest $a6 $ff $9 $3
	m_WarpDest $a6 $31 $0 $4
	m_WarpDest $a7 $11 $0 $4
	m_WarpDest $a7 $31 $0 $4
	m_WarpDest $a8 $14 $0 $4
	m_WarpDest $a8 $ff $9 $3
	m_WarpDest $a9 $ff $9 $3
	m_WarpDest $aa $ff $9 $3
	m_WarpDest $ab $66 $0 $4
	m_WarpDest $ab $44 $0 $4
	m_WarpDest $ac $ff $f $3
	m_WarpDest $ad $ff $9 $3
	m_WarpDest $ae $ff $9 $3
	m_WarpDest $af $ff $9 $3
	m_WarpDest $b0 $11 $0 $4
	m_WarpDest $b1 $f8 $9 $3
	m_WarpDest $b2 $ff $9 $3
	m_WarpDest $b3 $ff $9 $3
	m_WarpDest $b4 $ff $9 $3
	m_WarpDest $b5 $ff $9 $3
	m_WarpDest $b6 $ff $9 $3
	m_WarpDest $b6 $58 $0 $4
	m_WarpDest $b7 $18 $0 $4
	m_WarpDest $b8 $f3 $9 $3
	m_WarpDest $b8 $f7 $9 $3
	m_WarpDest $b8 $35 $0 $4
	m_WarpDest $b9 $68 $0 $4
	m_WarpDest $ba $61 $0 $4
	m_WarpDest $bb $ff $9 $3
	m_WarpDest $bc $ff $9 $3
	m_WarpDest $bd $ff $9 $3
	m_WarpDest $be $ff $9 $3
	m_WarpDest $bf $ff $9 $3

group4WarpDestTable:
	m_WarpDest $04 $ff $9 $3
	m_WarpDest $07 $ff $9 $3
	m_WarpDest $15 $ff $9 $3
	m_WarpDest $39 $ff $9 $3
	m_WarpDest $4b $ff $9 $3
	m_WarpDest $81 $ff $9 $3
	m_WarpDest $a7 $ff $9 $3
	m_WarpDest $ba $ff $9 $3
	m_WarpDest $07 $79 $0 $4
	m_WarpDest $0a $57 $0 $4
	m_WarpDest $1f $11 $0 $4
	m_WarpDest $32 $5b $0 $4
	m_WarpDest $33 $91 $0 $4
	m_WarpDest $37 $9d $0 $4
	m_WarpDest $3e $5b $0 $4
	m_WarpDest $3f $52 $0 $4
	m_WarpDest $3f $5d $0 $4
	m_WarpDest $41 $1d $0 $4
	m_WarpDest $41 $21 $0 $4
	m_WarpDest $43 $14 $0 $4
	m_WarpDest $44 $6d $0 $4
	m_WarpDest $48 $9d $0 $4
	m_WarpDest $4a $67 $0 $4
	m_WarpDest $4f $52 $0 $4
	m_WarpDest $52 $1d $0 $4
	m_WarpDest $53 $14 $0 $4
	m_WarpDest $57 $9d $0 $4
	m_WarpDest $59 $67 $0 $4
	m_WarpDest $65 $11 $0 $4
	m_WarpDest $77 $11 $0 $4
	m_WarpDest $69 $22 $0 $4
	m_WarpDest $61 $22 $0 $4
	m_WarpDest $66 $22 $0 $4
	m_WarpDest $79 $11 $0 $4
	m_WarpDest $68 $91 $0 $4
	m_WarpDest $6d $55 $0 $4
	m_WarpDest $8e $17 $0 $4
	m_WarpDest $90 $97 $0 $4
	m_WarpDest $90 $9d $0 $4
	m_WarpDest $93 $4c $0 $4
	m_WarpDest $9b $2b $0 $4
	m_WarpDest $a1 $17 $0 $4
	m_WarpDest $aa $07 $0 $4
	m_WarpDest $ac $01 $0 $4
	m_WarpDest $ad $18 $0 $4
	m_WarpDest $b4 $0c $0 $4
	m_WarpDest $bc $07 $0 $4
	m_WarpDest $be $01 $0 $4
	m_WarpDest $bf $18 $0 $4
	m_WarpDest $c4 $0c $0 $4
	m_WarpDest $c5 $91 $0 $4
	m_WarpDest $cd $9d $0 $4
	m_WarpDest $ce $91 $0 $4
	m_WarpDest $d3 $62 $0 $4
	m_WarpDest $d4 $9d $0 $4
	m_WarpDest $d5 $07 $0 $4
	m_WarpDest $d6 $62 $0 $4
	m_WarpDest $e0 $ff $9 $3
	m_WarpDest $e1 $f5 $9 $3
	m_WarpDest $e3 $12 $0 $4
	m_WarpDest $e3 $8c $0 $4
	m_WarpDest $e5 $7b $0 $4
	m_WarpDest $e5 $86 $0 $4
	m_WarpDest $e6 $66 $0 $4
	m_WarpDest $e7 $4a $0 $4
	m_WarpDest $e8 $fc $9 $3
	m_WarpDest $e8 $0c $0 $1
	m_WarpDest $e9 $fc $9 $3
	m_WarpDest $e9 $0c $0 $1
	m_WarpDest $ea $ff $9 $3
	m_WarpDest $eb $ff $9 $3
	m_WarpDest $ec $29 $0 $4
	m_WarpDest $ed $ff $9 $3
	m_WarpDest $ee $ff $9 $3
	m_WarpDest $ef $ff $9 $3
	m_WarpDest $f0 $ff $9 $3
	m_WarpDest $f1 $ff $9 $3
	m_WarpDest $f2 $19 $0 $4
	m_WarpDest $f2 $ff $9 $3
	m_WarpDest $f3 $ff $9 $3
	m_WarpDest $f4 $27 $0 $4
	m_WarpDest $f4 $77 $0 $4
	m_WarpDest $f5 $46 $0 $4
	m_WarpDest $f5 $37 $0 $4
	m_WarpDest $f6 $2a $0 $4
	m_WarpDest $f6 $ff $9 $3
	m_WarpDest $f7 $71 $0 $4
	m_WarpDest $f8 $9a $0 $4
	m_WarpDest $f9 $f4 $9 $3
	m_WarpDest $f9 $fa $9 $3
	m_WarpDest $fa $ff $9 $3
	m_WarpDest $fb $ff $9 $3
	m_WarpDest $fc $ff $9 $3

group5WarpDestTable:
	m_WarpDest $5b $ff $9 $3
	m_WarpDest $87 $ff $9 $3
	m_WarpDest $97 $ff $9 $3
	m_WarpDest $9d $ff $9 $3
	m_WarpDest $30 $ff $9 $3
	m_WarpDest $37 $97 $0 $4
	m_WarpDest $39 $2b $0 $4
	m_WarpDest $3c $15 $0 $4
	m_WarpDest $43 $11 $0 $4
	m_WarpDest $43 $16 $0 $4
	m_WarpDest $43 $1b $0 $4
	m_WarpDest $43 $41 $0 $4
	m_WarpDest $43 $44 $0 $4
	m_WarpDest $43 $46 $0 $4
	m_WarpDest $43 $48 $0 $4
	m_WarpDest $43 $4c $0 $4
	m_WarpDest $43 $66 $0 $4
	m_WarpDest $43 $69 $0 $4
	m_WarpDest $43 $73 $0 $4
	m_WarpDest $43 $7b $0 $4
	m_WarpDest $43 $9d $0 $4
	m_WarpDest $43 $91 $0 $4
	m_WarpDest $46 $57 $0 $4
	m_WarpDest $47 $97 $0 $4
	m_WarpDest $4a $2b $0 $4
	m_WarpDest $4b $82 $0 $4
	m_WarpDest $4b $8c $0 $4
	m_WarpDest $4c $15 $0 $4
	m_WarpDest $51 $11 $0 $4
	m_WarpDest $51 $16 $0 $4
	m_WarpDest $51 $1b $0 $4
	m_WarpDest $51 $41 $0 $4
	m_WarpDest $51 $44 $0 $4
	m_WarpDest $51 $46 $0 $4
	m_WarpDest $51 $48 $0 $4
	m_WarpDest $51 $4c $0 $4
	m_WarpDest $51 $66 $0 $4
	m_WarpDest $51 $69 $0 $4
	m_WarpDest $51 $73 $0 $4
	m_WarpDest $51 $7b $0 $4
	m_WarpDest $51 $9d $0 $4
	m_WarpDest $51 $91 $0 $4
	m_WarpDest $53 $57 $0 $4
	m_WarpDest $57 $82 $0 $4
	m_WarpDest $57 $8c $0 $4
	m_WarpDest $5e $2c $0 $4
	m_WarpDest $63 $8c $0 $4
	m_WarpDest $68 $7a $0 $4
	m_WarpDest $69 $2c $0 $4
	m_WarpDest $6a $8c $0 $4
	m_WarpDest $6b $55 $0 $4
	m_WarpDest $6c $7a $0 $4
	m_WarpDest $6e $33 $0 $4
	m_WarpDest $71 $1c $0 $4
	m_WarpDest $73 $91 $0 $4
	m_WarpDest $74 $35 $0 $4
	m_WarpDest $74 $6d $0 $4
	m_WarpDest $77 $2c $0 $4
	m_WarpDest $78 $22 $0 $4
	m_WarpDest $84 $8b $0 $4
	m_WarpDest $86 $17 $0 $4
	m_WarpDest $88 $8c $0 $4
	m_WarpDest $89 $55 $0 $4
	m_WarpDest $8a $7a $0 $4
	m_WarpDest $8b $23 $0 $4
	m_WarpDest $8c $1c $0 $4
	m_WarpDest $8d $91 $0 $4
	m_WarpDest $8e $35 $0 $4
	m_WarpDest $8e $6d $0 $4
	m_WarpDest $67 $2c $0 $4
	m_WarpDest $83 $2c $0 $4
	m_WarpDest $9a $66 $0 $4
	m_WarpDest $9d $57 $0 $4
	m_WarpDest $9e $9d $0 $4
	m_WarpDest $31 $1c $0 $4
	m_WarpDest $33 $1c $0 $4
	m_WarpDest $2f $8d $0 $4
	m_WarpDest $29 $8d $0 $4
	m_WarpDest $28 $1c $0 $4
	m_WarpDest $20 $46 $0 $4
	m_WarpDest $24 $22 $0 $4
	m_WarpDest $26 $22 $0 $4
	m_WarpDest $2c $22 $0 $5
	m_WarpDest $27 $57 $0 $4
	m_WarpDest $34 $97 $0 $4
	m_WarpDest $b0 $f5 $9 $3
	m_WarpDest $b0 $23 $0 $4
	m_WarpDest $b0 $3d $0 $4
	m_WarpDest $b1 $78 $0 $4
	m_WarpDest $b1 $23 $0 $4
	m_WarpDest $b2 $fa $9 $3
	m_WarpDest $b2 $43 $0 $4
	m_WarpDest $b3 $f3 $9 $3
	m_WarpDest $b3 $fc $9 $3
	m_WarpDest $b4 $f3 $9 $3
	m_WarpDest $b5 $ff $9 $3
	m_WarpDest $b6 $ff $9 $3
	m_WarpDest $b7 $24 $0 $4
	m_WarpDest $b7 $74 $0 $4
	m_WarpDest $b8 $24 $0 $4
	m_WarpDest $b9 $f9 $9 $3
	m_WarpDest $ba $24 $0 $4
	m_WarpDest $ba $f4 $9 $3
	m_WarpDest $bb $ff $9 $3
	m_WarpDest $be $34 $0 $4
	m_WarpDest $be $48 $0 $4
	m_WarpDest $bf $34 $0 $4
	m_WarpDest $bf $7a $0 $4
	m_WarpDest $c0 $7a $0 $4
	m_WarpDest $c1 $f4 $9 $3
	m_WarpDest $c1 $2c $0 $4
	m_WarpDest $c2 $22 $0 $4
	m_WarpDest $c2 $2c $0 $4
	m_WarpDest $c3 $33 $0 $4
	m_WarpDest $c4 $3b $9 $3
	m_WarpDest $c5 $ff $9 $3
	m_WarpDest $c6 $ff $9 $3
	m_WarpDest $c7 $ff $9 $3
	m_WarpDest $c8 $fb $9 $3
	m_WarpDest $c8 $33 $0 $4
	m_WarpDest $c9 $ff $9 $3
	m_WarpDest $c9 $1c $0 $4
	m_WarpDest $c9 $9d $0 $4
	m_WarpDest $ca $f6 $9 $3
	m_WarpDest $ca $24 $0 $4
	m_WarpDest $cb $f4 $9 $3
	m_WarpDest $cb $fc $9 $3
	m_WarpDest $cb $1c $0 $4
	m_WarpDest $cc $f6 $9 $3
	m_WarpDest $cc $4c $0 $4
	m_WarpDest $cf $16 $0 $4
	m_WarpDest $cf $97 $0 $4
	m_WarpDest $d4 $97 $0 $4
	m_WarpDest $d0 $74 $0 $4
	m_WarpDest $d1 $74 $0 $4
	m_WarpDest $d2 $74 $0 $4
	m_WarpDest $d3 $37 $0 $4
	m_WarpDest $d3 $ff $9 $3
	m_WarpDest $01 $7b $0 $4
	m_WarpDest $02 $7b $0 $4
	m_WarpDest $03 $7b $0 $4
	m_WarpDest $04 $7b $0 $4
	m_WarpDest $05 $7b $0 $4
	m_WarpDest $06 $7b $0 $4
	m_WarpDest $07 $7b $0 $4
	m_WarpDest $08 $7b $0 $4
	m_WarpDest $09 $ff $9 $3
	m_WarpDest $0a $87 $0 $4
	m_WarpDest $0b $ff $9 $3
	m_WarpDest $0c $99 $0 $4
	m_WarpDest $0d $ff $9 $3
	m_WarpDest $0e $52 $9 $3
	m_WarpDest $0f $9d $0 $4
	m_WarpDest $10 $87 $0 $4
	m_WarpDest $11 $7b $0 $4
	m_WarpDest $12 $f3 $9 $3
	m_WarpDest $f3 $ff $9 $3
	m_WarpDest $f6 $ff $9 $3
	m_WarpDest $f9 $ff $9 $3
	m_WarpDest $f0 $ff $9 $3
	m_WarpDest $f3 $27 $0 $4
	m_WarpDest $f4 $27 $0 $4
	m_WarpDest $f4 $87 $0 $4
	m_WarpDest $f5 $87 $0 $4
	m_WarpDest $f6 $27 $0 $4
	m_WarpDest $f7 $27 $0 $4
	m_WarpDest $f7 $87 $0 $4
	m_WarpDest $f8 $87 $0 $4
	m_WarpDest $f9 $27 $0 $4
	m_WarpDest $fa $27 $0 $4
	m_WarpDest $fa $87 $0 $4
	m_WarpDest $fb $87 $0 $4
	m_WarpDest $f0 $27 $0 $4
	m_WarpDest $f1 $27 $0 $4
	m_WarpDest $f1 $87 $0 $4
	m_WarpDest $f2 $87 $0 $4

group6WarpDestTable:
	m_WarpDest $01 $02 $f $3
	m_WarpDest $09 $02 $f $3
	m_WarpDest $1d $02 $f $3
	m_WarpDest $1e $0c $f $3
	m_WarpDest $3a $01 $f $3
	m_WarpDest $3b $0d $f $3
	m_WarpDest $3c $01 $f $3
	m_WarpDest $3d $0d $f $3
	m_WarpDest $5c $02 $f $3
	m_WarpDest $5d $0c $f $3
	m_WarpDest $84 $01 $f $3
	m_WarpDest $85 $01 $f $3
	m_WarpDest $86 $0d $f $3
	m_WarpDest $87 $0d $f $3
	m_WarpDest $a8 $01 $f $3
	m_WarpDest $a9 $0d $f $3

group7WarpDestTable:
	m_WarpDest $5c $02 $f $3
	m_WarpDest $5d $0c $f $3
	m_WarpDest $60 $02 $f $3
	m_WarpDest $62 $0d $f $3
	m_WarpDest $e0 $02 $f $3
	m_WarpDest $e1 $0b $f $3
	m_WarpDest $e2 $01 $f $3
	m_WarpDest $e3 $07 $f $3
	m_WarpDest $e4 $01 $f $3
	m_WarpDest $e5 $07 $f $3
	m_WarpDest $e8 $06 $f $3
