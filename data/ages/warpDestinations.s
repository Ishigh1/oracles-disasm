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
	m_WarpDest $57 $34 $0 $1
	m_WarpDest $00 $00 $0 $1
	m_WarpDest $00 $57 $0 $1
	m_WarpDest $03 $35 $0 $e
	m_WarpDest $0a $17 $0 $1
	m_WarpDest $48 $28 $0 $1
	m_WarpDest $48 $ff $f $3
	m_WarpDest $38 $ff $9 $3
	m_WarpDest $00 $00 $0 $1
	m_WarpDest $02 $22 $0 $1
	m_WarpDest $04 $27 $0 $1
	m_WarpDest $06 $48 $0 $1
	m_WarpDest $12 $35 $0 $1
	m_WarpDest $14 $34 $0 $1
	m_WarpDest $09 $44 $0 $1
	m_WarpDest $09 $46 $0 $1
	m_WarpDest $09 $37 $0 $1
	m_WarpDest $09 $43 $0 $1
	m_WarpDest $0a $12 $0 $1
	m_WarpDest $0b $41 $0 $1
	m_WarpDest $0b $43 $0 $1
	m_WarpDest $0b $27 $0 $1
	m_WarpDest $0c $54 $0 $1
	m_WarpDest $0d $42 $0 $1
	m_WarpDest $0d $45 $0 $1
	m_WarpDest $18 $04 $0 $1
	m_WarpDest $18 $21 $0 $1
	m_WarpDest $1b $36 $0 $1
	m_WarpDest $1b $08 $0 $1
	m_WarpDest $1c $43 $0 $1
	m_WarpDest $1c $37 $0 $1
	m_WarpDest $1d $13 $0 $1
	m_WarpDest $1d $27 $0 $1
	m_WarpDest $27 $55 $0 $1
	m_WarpDest $28 $26 $0 $1
	m_WarpDest $2b $23 $0 $1
	m_WarpDest $37 $33 $0 $1
	m_WarpDest $38 $26 $0 $e
	m_WarpDest $00 $00 $0 $1
	m_WarpDest $38 $57 $0 $1
	m_WarpDest $39 $31 $0 $1
	m_WarpDest $3a $23 $0 $1
	m_WarpDest $3c $34 $0 $1
	m_WarpDest $3d $13 $0 $1
	m_WarpDest $3d $27 $0 $1
	m_WarpDest $45 $52 $0 $1
	m_WarpDest $47 $25 $0 $1
	m_WarpDest $47 $27 $0 $1
	m_WarpDest $4d $38 $0 $1
	m_WarpDest $53 $52 $0 $e
	m_WarpDest $55 $42 $0 $1
	m_WarpDest $56 $28 $0 $1
	m_WarpDest $57 $25 $0 $1
	m_WarpDest $58 $45 $0 $1
	m_WarpDest $5b $32 $0 $1
	m_WarpDest $5d $27 $0 $1
	m_WarpDest $66 $54 $0 $1
	m_WarpDest $68 $25 $0 $1
	m_WarpDest $67 $35 $0 $1
	m_WarpDest $76 $45 $0 $e
	m_WarpDest $79 $11 $0 $1
	m_WarpDest $7c $35 $0 $1
	m_WarpDest $89 $45 $0 $1
	m_WarpDest $8d $61 $0 $1
	m_WarpDest $a0 $03 $0 $1
	m_WarpDest $a3 $32 $0 $1
	m_WarpDest $a5 $23 $0 $e
	m_WarpDest $bd $11 $0 $1
	m_WarpDest $c5 $33 $0 $1
	m_WarpDest $cd $52 $0 $1
	m_WarpDest $da $06 $0 $1
	m_WarpDest $dd $25 $0 $1
	m_WarpDest $e0 $46 $0 $1
	m_WarpDest $e1 $53 $0 $1
	m_WarpDest $e1 $26 $0 $1
	m_WarpDest $e2 $54 $0 $1
	m_WarpDest $f1 $43 $0 $1
	m_WarpDest $00 $00 $0 $1

group1WarpDestTable:
	m_WarpDest $00 $00 $0 $1
	m_WarpDest $83 $25 $0 $1
	m_WarpDest $5c $15 $0 $e
	m_WarpDest $48 $ff $f $3
	m_WarpDest $38 $ff $9 $3
	m_WarpDest $0e $ff $9 $3
	m_WarpDest $0e $16 $0 $4
	m_WarpDest $01 $18 $0 $1
	m_WarpDest $02 $22 $0 $1
	m_WarpDest $04 $27 $0 $1
	m_WarpDest $05 $13 $0 $1
	m_WarpDest $06 $15 $0 $e
	m_WarpDest $07 $26 $0 $1
	m_WarpDest $09 $35 $0 $1
	m_WarpDest $0b $41 $0 $1
	m_WarpDest $0b $27 $0 $1
	m_WarpDest $0c $54 $0 $1
	m_WarpDest $0d $52 $0 $1
	m_WarpDest $12 $35 $0 $1
	m_WarpDest $13 $55 $0 $e
	m_WarpDest $14 $34 $0 $1
	m_WarpDest $18 $04 $0 $1
	m_WarpDest $1c $43 $0 $1
	m_WarpDest $1d $13 $0 $1
	m_WarpDest $23 $05 $0 $e
	m_WarpDest $27 $47 $0 $1
	m_WarpDest $28 $26 $0 $1
	m_WarpDest $2b $23 $0 $1
	m_WarpDest $2d $07 $0 $1
	m_WarpDest $38 $52 $0 $1
	m_WarpDest $39 $22 $0 $1
	m_WarpDest $3c $34 $0 $1
	m_WarpDest $3d $27 $0 $1
	m_WarpDest $41 $51 $0 $1
	m_WarpDest $41 $57 $0 $1
	m_WarpDest $43 $48 $0 $1
	m_WarpDest $45 $52 $0 $1
	m_WarpDest $4d $38 $0 $1
	m_WarpDest $51 $15 $0 $e
	m_WarpDest $55 $41 $0 $1
	m_WarpDest $56 $27 $0 $1
	m_WarpDest $57 $36 $0 $1
	m_WarpDest $58 $32 $0 $1
	m_WarpDest $58 $35 $0 $1
	m_WarpDest $5a $31 $0 $1
	m_WarpDest $66 $54 $0 $1
	m_WarpDest $70 $22 $0 $1
	m_WarpDest $70 $27 $0 $1
	m_WarpDest $71 $22 $0 $1
	m_WarpDest $72 $14 $0 $1
	m_WarpDest $74 $37 $0 $1
	m_WarpDest $76 $45 $0 $e
	m_WarpDest $79 $17 $0 $1
	m_WarpDest $91 $11 $0 $1
	m_WarpDest $a3 $36 $0 $1
	m_WarpDest $a5 $23 $0 $e
	m_WarpDest $a7 $24 $0 $1
	m_WarpDest $a7 $26 $0 $1
	m_WarpDest $ad $15 $0 $1
	m_WarpDest $ba $55 $0 $1
	m_WarpDest $bb $01 $0 $1
	m_WarpDest $bc $41 $0 $1
	m_WarpDest $bd $11 $0 $1
	m_WarpDest $c5 $38 $0 $1
	m_WarpDest $cb $08 $0 $1
	m_WarpDest $cd $34 $0 $1
	m_WarpDest $cd $11 $0 $1
	m_WarpDest $d9 $48 $0 $1
	m_WarpDest $da $06 $0 $1
	m_WarpDest $db $01 $0 $1
	m_WarpDest $dd $31 $0 $1
	m_WarpDest $e0 $11 $0 $4
	m_WarpDest $e2 $32 $0 $4

group2WarpDestTable:
	m_WarpDest $90 $45 $0 $e
	m_WarpDest $0e $ff $9 $3
	m_WarpDest $0f $ff $9 $3
	m_WarpDest $1e $ff $9 $3
	m_WarpDest $1f $f4 $9 $3
	m_WarpDest $2e $68 $0 $4
	m_WarpDest $2f $ff $9 $3
	m_WarpDest $3e $f7 $9 $3
	m_WarpDest $3f $ff $9 $3
	m_WarpDest $4e $18 $0 $4
	m_WarpDest $4f $f2 $9 $3
	m_WarpDest $5e $f2 $9 $3
	m_WarpDest $5e $f6 $9 $3
	m_WarpDest $5e $31 $0 $4
	m_WarpDest $5f $31 $0 $4
	m_WarpDest $5f $11 $0 $4
	m_WarpDest $6e $ff $9 $3
	m_WarpDest $6f $ff $9 $3
	m_WarpDest $7e $11 $0 $4
	m_WarpDest $7f $ff $9 $3
	m_WarpDest $8e $ff $9 $3
	m_WarpDest $8f $ff $9 $3
	m_WarpDest $8f $14 $0 $4
	m_WarpDest $9e $ff $9 $3
	m_WarpDest $9e $11 $0 $1
	m_WarpDest $9f $f3 $9 $3
	m_WarpDest $9f $f7 $9 $3
	m_WarpDest $9f $15 $0 $4
	m_WarpDest $a1 $25 $0 $e
	m_WarpDest $ae $15 $0 $4
	m_WarpDest $ae $61 $0 $4
	m_WarpDest $af $61 $0 $4
	m_WarpDest $b7 $33 $0 $1
	m_WarpDest $ba $12 $0 $1
	m_WarpDest $be $15 $0 $4
	m_WarpDest $bf $ff $9 $3
	m_WarpDest $bf $15 $0 $4
	m_WarpDest $c0 $32 $0 $4
	m_WarpDest $c1 $46 $0 $4
	m_WarpDest $ce $11 $0 $1
	m_WarpDest $ce $18 $0 $4
	m_WarpDest $cf $ff $9 $3
	m_WarpDest $d0 $22 $0 $1
	m_WarpDest $d0 $25 $0 $1
	m_WarpDest $de $ff $9 $3
	m_WarpDest $df $ff $9 $3
	m_WarpDest $e3 $ff $9 $3
	m_WarpDest $e3 $16 $0 $4
	m_WarpDest $e4 $ff $9 $3
	m_WarpDest $e5 $ff $9 $3
	m_WarpDest $e6 $f7 $9 $3
	m_WarpDest $e7 $ff $9 $3
	m_WarpDest $e8 $61 $0 $4
	m_WarpDest $e8 $68 $0 $4
	m_WarpDest $e9 $ff $9 $3
	m_WarpDest $ea $ff $9 $3
	m_WarpDest $eb $ff $9 $3
	m_WarpDest $ec $ff $9 $3
	m_WarpDest $5e $f6 $9 $3
	m_WarpDest $ee $ff $9 $3
	m_WarpDest $ef $ff $9 $3
	m_WarpDest $f3 $ff $9 $3
	m_WarpDest $f4 $ff $9 $3
	m_WarpDest $f5 $ff $9 $3
	m_WarpDest $f6 $ff $9 $3
	m_WarpDest $f7 $ff $9 $3
	m_WarpDest $f8 $ff $9 $3
	m_WarpDest $f9 $f3 $9 $3
	m_WarpDest $fa $15 $0 $4
	m_WarpDest $fb $ff $9 $3
	m_WarpDest $fb $22 $0 $4
	m_WarpDest $fc $f3 $9 $3
	m_WarpDest $fd $f6 $9 $3
	m_WarpDest $fd $48 $0 $4
	m_WarpDest $fe $ff $9 $3
	m_WarpDest $ff $f6 $9 $3
	m_WarpDest $ff $48 $0 $4

group3WarpDestTable:
	m_WarpDest $0f $f4 $9 $3
	m_WarpDest $0f $f5 $9 $3
	m_WarpDest $0f $f6 $9 $3
	m_WarpDest $0f $16 $0 $4
	m_WarpDest $1e $ff $9 $3
	m_WarpDest $1e $12 $0 $4
	m_WarpDest $1e $17 $0 $4
	m_WarpDest $1f $ff $9 $3
	m_WarpDest $1f $12 $0 $4
	m_WarpDest $2e $ff $9 $3
	m_WarpDest $2e $15 $0 $4
	m_WarpDest $2f $ff $9 $3
	m_WarpDest $2f $15 $0 $4
	m_WarpDest $3f $ff $9 $3
	m_WarpDest $4e $52 $0 $4
	m_WarpDest $4e $27 $0 $4
	m_WarpDest $4f $ff $9 $3
	m_WarpDest $5e $ff $9 $3
	m_WarpDest $5f $ff $9 $3
	m_WarpDest $6e $ff $9 $3
	m_WarpDest $6f $ff $9 $3
	m_WarpDest $7e $f4 $9 $3
	m_WarpDest $7f $f6 $9 $3
	m_WarpDest $8c $45 $0 $1
	m_WarpDest $8e $ff $9 $3
	m_WarpDest $8f $68 $0 $4
	m_WarpDest $9e $ff $9 $3
	m_WarpDest $9e $22 $0 $4
	m_WarpDest $9f $22 $0 $4
	m_WarpDest $9f $11 $0 $4
	m_WarpDest $a1 $25 $0 $e
	m_WarpDest $ae $11 $0 $4
	m_WarpDest $af $ff $9 $3
	m_WarpDest $be $18 $0 $4
	m_WarpDest $be $ff $9 $3
	m_WarpDest $bf $ff $9 $3
	m_WarpDest $c1 $46 $0 $1
	m_WarpDest $c5 $55 $0 $1
	m_WarpDest $c7 $46 $0 $1
	m_WarpDest $ce $ff $9 $3
	m_WarpDest $cf $ff $9 $3
	m_WarpDest $d0 $22 $0 $1
	m_WarpDest $d0 $25 $0 $1
	m_WarpDest $de $ff $9 $3
	m_WarpDest $df $ff $9 $3
	m_WarpDest $e3 $ff $9 $3
	m_WarpDest $e4 $ff $9 $3
	m_WarpDest $e5 $ff $9 $3
	m_WarpDest $e6 $ff $9 $3
	m_WarpDest $e7 $ff $9 $3
	m_WarpDest $e8 $ff $9 $3
	m_WarpDest $e9 $18 $0 $1
	m_WarpDest $ea $ff $9 $3
	m_WarpDest $eb $f4 $9 $3
	m_WarpDest $ec $f6 $9 $3
	m_WarpDest $ed $ff $9 $3
	m_WarpDest $ee $ff $9 $3
	m_WarpDest $ef $ff $9 $3
	m_WarpDest $f6 $ff $9 $3
	m_WarpDest $f7 $ff $9 $3
	m_WarpDest $f8 $ff $9 $3
	m_WarpDest $fa $ff $9 $3
	m_WarpDest $fb $ff $9 $3
	m_WarpDest $fc $ff $9 $3
	m_WarpDest $fd $ff $9 $3
	m_WarpDest $fe $ff $9 $3
	m_WarpDest $ff $ff $9 $3

group4WarpDestTable:
	m_WarpDest $04 $ff $9 $3
	m_WarpDest $0d $ff $9 $3
	m_WarpDest $24 $ff $9 $3
	m_WarpDest $46 $ff $9 $3
	m_WarpDest $66 $ff $9 $3
	m_WarpDest $91 $ff $9 $3
	m_WarpDest $bb $ff $9 $3
	m_WarpDest $ce $ff $9 $3
	m_WarpDest $09 $1a $0 $4
	m_WarpDest $07 $17 $0 $1
	m_WarpDest $01 $07 $0 $1
	m_WarpDest $12 $2c $0 $1
	m_WarpDest $20 $53 $0 $4
	m_WarpDest $37 $63 $0 $4
	m_WarpDest $37 $6b $0 $4
	m_WarpDest $47 $57 $0 $4
	m_WarpDest $48 $33 $0 $4
	m_WarpDest $71 $1d $0 $1
	m_WarpDest $72 $9d $0 $1
	m_WarpDest $99 $23 $0 $4
	m_WarpDest $9b $12 $0 $4
	m_WarpDest $9c $87 $0 $4
	m_WarpDest $a0 $22 $0 $4
	m_WarpDest $a2 $87 $0 $4
	m_WarpDest $a3 $17 $0 $4
	m_WarpDest $a4 $64 $0 $4
	m_WarpDest $ad $27 $0 $4
	m_WarpDest $c2 $15 $0 $4
	m_WarpDest $c3 $22 $0 $4
	m_WarpDest $d0 $ff $9 $3
	m_WarpDest $d0 $11 $0 $4
	m_WarpDest $d0 $17 $0 $4
	m_WarpDest $d0 $19 $0 $4
	m_WarpDest $d0 $1d $0 $4
	m_WarpDest $d0 $31 $0 $4
	m_WarpDest $d0 $35 $0 $4
	m_WarpDest $d0 $39 $0 $4
	m_WarpDest $d0 $51 $0 $4
	m_WarpDest $d0 $55 $0 $4
	m_WarpDest $d0 $59 $0 $4
	m_WarpDest $d0 $5d $0 $4
	m_WarpDest $d0 $71 $0 $4
	m_WarpDest $d0 $77 $0 $4
	m_WarpDest $d0 $91 $0 $4
	m_WarpDest $d0 $9d $0 $4
	m_WarpDest $d1 $57 $0 $4
	m_WarpDest $d1 $11 $0 $4
	m_WarpDest $d1 $17 $0 $4
	m_WarpDest $d1 $19 $0 $4
	m_WarpDest $d1 $1d $0 $4
	m_WarpDest $d1 $31 $0 $4
	m_WarpDest $d1 $35 $0 $4
	m_WarpDest $d1 $39 $0 $4
	m_WarpDest $d1 $51 $0 $4
	m_WarpDest $d1 $55 $0 $4
	m_WarpDest $d1 $59 $0 $4
	m_WarpDest $d1 $5d $0 $4
	m_WarpDest $d1 $71 $0 $4
	m_WarpDest $d1 $77 $0 $4
	m_WarpDest $d1 $91 $0 $4
	m_WarpDest $d1 $9d $0 $4
	m_WarpDest $d2 $57 $0 $4
	m_WarpDest $d2 $8a $0 $4
	m_WarpDest $d3 $57 $0 $4
	m_WarpDest $04 $ff $0 $3
	m_WarpDest $d3 $2c $0 $4
	m_WarpDest $d3 $07 $0 $4
	m_WarpDest $e6 $ff $9 $3
	m_WarpDest $e6 $47 $0 $4
	m_WarpDest $05 $68 $0 $1
	m_WarpDest $ea $47 $0 $1
	m_WarpDest $eb $52 $0 $4
	m_WarpDest $f0 $77 $0 $4
	m_WarpDest $f0 $27 $0 $4
	m_WarpDest $f2 $5c $0 $4
	m_WarpDest $fb $5c $0 $4
	m_WarpDest $fe $ff $9 $3
	m_WarpDest $fd $52 $0 $4
	m_WarpDest $0f $66 $0 $1
	m_WarpDest $39 $67 $0 $1
	m_WarpDest $1c $ff $9 $3
	m_WarpDest $15 $07 $9 $1
	m_WarpDest $2c $07 $0 $1
	m_WarpDest $35 $a7 $9 $3
	m_WarpDest $39 $67 $0 $1
	m_WarpDest $43 $28 $0 $1
	m_WarpDest $56 $13 $0 $1
	m_WarpDest $50 $4c $0 $1
	m_WarpDest $4a $1d $0 $1
	m_WarpDest $51 $1d $0 $1
	m_WarpDest $5c $27 $0 $4
	m_WarpDest $59 $17 $0 $1
	m_WarpDest $65 $07 $0 $1
	m_WarpDest $43 $13 $0 $1
	m_WarpDest $59 $87 $0 $1
	m_WarpDest $65 $97 $0 $4
	m_WarpDest $04 $70 $0 $1
	m_WarpDest $66 $07 $0 $1
	m_WarpDest $66 $17 $0 $1
	m_WarpDest $6b $1d $0 $1
	m_WarpDest $6b $1d $9 $3
	m_WarpDest $6b $1d $0 $1
	m_WarpDest $6f $11 $0 $1
	m_WarpDest $75 $00 $0 $1
	m_WarpDest $79 $a7 $0 $1
	m_WarpDest $74 $11 $0 $1

group5WarpDestTable:
	m_WarpDest $26 $ff $9 $3
	m_WarpDest $56 $ff $9 $3
	m_WarpDest $aa $ff $9 $3
	m_WarpDest $01 $ff $9 $3
	m_WarpDest $f4 $ff $9 $3
	m_WarpDest $ce $ff $9 $3
	m_WarpDest $44 $ff $9 $3
	m_WarpDest $20 $5c $0 $4
	m_WarpDest $25 $8c $0 $4
	m_WarpDest $33 $5c $0 $4
	m_WarpDest $35 $8c $0 $4
	m_WarpDest $4b $45 $0 $4
	m_WarpDest $4c $57 $0 $4
	m_WarpDest $4d $4a $0 $4
	m_WarpDest $4e $1c $0 $4
	m_WarpDest $79 $57 $0 $4
	m_WarpDest $7e $97 $0 $4
	m_WarpDest $84 $1c $0 $4
	m_WarpDest $87 $9d $0 $4
	m_WarpDest $88 $97 $0 $4
	m_WarpDest $8a $57 $0 $4
	m_WarpDest $8c $1a $0 $4
	m_WarpDest $f1 $66 $0 $4
	m_WarpDest $f4 $57 $0 $4
	m_WarpDest $f5 $9d $0 $4
	m_WarpDest $b0 $22 $0 $4
	m_WarpDest $b2 $3b $0 $4
	m_WarpDest $b3 $17 $0 $4
	m_WarpDest $b4 $22 $0 $4
	m_WarpDest $b4 $8b $0 $4
	m_WarpDest $b5 $2b $0 $4
	m_WarpDest $b9 $fa $9 $3
	m_WarpDest $ba $82 $0 $4
	m_WarpDest $ba $99 $0 $4
	m_WarpDest $ba $2c $0 $4
	m_WarpDest $bb $57 $0 $4
	m_WarpDest $bc $82 $0 $4
	m_WarpDest $bc $27 $0 $4
	m_WarpDest $bc $99 $0 $4
	m_WarpDest $bc $2c $0 $4
	m_WarpDest $be $8a $0 $1
	m_WarpDest $c0 $ff $9 $3
	m_WarpDest $c0 $21 $0 $4
	m_WarpDest $c0 $57 $0 $4
	m_WarpDest $c1 $27 $0 $4
	m_WarpDest $c2 $24 $0 $1
	m_WarpDest $c2 $2b $0 $4
	m_WarpDest $c3 $fa $9 $3
	m_WarpDest $c4 $99 $0 $4
	m_WarpDest $c5 $57 $0 $4
	m_WarpDest $c6 $99 $0 $4
	m_WarpDest $c7 $ff $9 $3
	m_WarpDest $cc $f2 $9 $3
	m_WarpDest $cc $2d $0 $4
	m_WarpDest $cc $1c $0 $1
	m_WarpDest $cc $12 $0 $4
	m_WarpDest $cd $f3 $9 $3
	m_WarpDest $cd $f8 $9 $3
	m_WarpDest $cd $42 $0 $4
	m_WarpDest $cd $49 $0 $4
	m_WarpDest $cf $fc $9 $3
	m_WarpDest $cf $0c $0 $4
	m_WarpDest $d0 $ff $9 $3
	m_WarpDest $d1 $ff $9 $3
	m_WarpDest $d1 $57 $0 $4
	m_WarpDest $d2 $ff $9 $3
	m_WarpDest $d2 $2c $0 $4
	m_WarpDest $d3 $ff $9 $3
	m_WarpDest $d4 $57 $0 $4
	m_WarpDest $d8 $ff $9 $3
	m_WarpDest $da $f5 $9 $3
	m_WarpDest $db $fb $9 $3
	m_WarpDest $dc $45 $0 $4
	m_WarpDest $dd $5a $0 $4
	m_WarpDest $de $45 $0 $4
	m_WarpDest $df $5a $0 $4
	m_WarpDest $e0 $f4 $9 $3
	m_WarpDest $e1 $2c $0 $4
	m_WarpDest $e2 $f4 $9 $3
	m_WarpDest $e3 $2c $0 $4
	m_WarpDest $e8 $49 $0 $4
	m_WarpDest $e9 $f3 $9 $3
	m_WarpDest $ea $77 $0 $4
	m_WarpDest $ea $f2 $9 $3
	m_WarpDest $ea $fc $9 $3
	m_WarpDest $eb $ff $9 $3
	m_WarpDest $eb $57 $0 $4
	m_WarpDest $ec $ff $9 $3
	m_WarpDest $ee $f2 $9 $3
	m_WarpDest $ee $fc $9 $3
	m_WarpDest $ee $11 $0 $4
	m_WarpDest $ca $fc $9 $3
	m_WarpDest $ab $87 $0 $4
	m_WarpDest $ac $ff $9 $3
	m_WarpDest $ac $27 $0 $4
	m_WarpDest $ad $87 $0 $4
	m_WarpDest $ae $ff $9 $3
	m_WarpDest $ae $27 $0 $4
	m_WarpDest $e5 $f5 $9 $3
	m_WarpDest $e6 $fb $9 $3
	m_WarpDest $f6 $93 $0 $4
	m_WarpDest $f6 $9b $0 $4
	m_WarpDest $ed $91 $0 $4
	m_WarpDest $f6 $ff $9 $3
	m_WarpDest $f6 $91 $0 $4
	m_WarpDest $f6 $9d $0 $4
	m_WarpDest $f7 $ff $9 $3
	m_WarpDest $f9 $ff $9 $3
	m_WarpDest $fb $17 $0 $4

group6WarpDestTable:
	m_WarpDest $27 $a1 $0 $1
	m_WarpDest $10 $02 $f $3
	m_WarpDest $27 $a1 $9 $3
	m_WarpDest $29 $01 $f $3
	m_WarpDest $42 $0d $0 $1
	m_WarpDest $2d $0d $0 $1
	m_WarpDest $2f $0b $0 $1
	m_WarpDest $68 $01 $f $3
	m_WarpDest $6c $ad $9 $1
	m_WarpDest $93 $02 $f $3
	m_WarpDest $94 $0c $f $3
	m_WarpDest $95 $02 $f $3
	m_WarpDest $96 $ad $9 $3
	m_WarpDest $97 $01 $f $3
	m_WarpDest $97 $0d $f $3
	m_WarpDest $98 $01 $f $3
	m_WarpDest $98 $0d $f $3
	m_WarpDest $c0 $01 $f $3
	m_WarpDest $c0 $0d $f $3
	m_WarpDest $42 $01 $0 $1
	m_WarpDest $41 $a2 $0 $1
	m_WarpDest $41 $ac $0 $1
	m_WarpDest $62 $01 $0 $1
	m_WarpDest $62 $0d $0 $1
	m_WarpDest $62 $0d $0 $1
	m_WarpDest $6e $d1 $9 $3
	m_WarpDest $76 $a1 $9 $1
	m_WarpDest $76 $ad $0 $1
	m_WarpDest $7b $11 $0 $1

group7WarpDestTable:
	m_WarpDest $01 $01 $f $3
	m_WarpDest $01 $0d $f $3
	m_WarpDest $02 $a1 $9 $3
	m_WarpDest $02 $0b $f $3
	m_WarpDest $03 $0b $f $3
	m_WarpDest $04 $a3 $9 $3
	m_WarpDest $04 $0c $f $3
	m_WarpDest $08 $01 $f $3
	m_WarpDest $08 $0d $f $3
	m_WarpDest $0a $0d $f $3
	m_WarpDest $05 $0d $f $3
	m_WarpDest $07 $05 $f $3
	m_WarpDest $07 $0d $f $3
	m_WarpDest $10 $02 $f $3
	m_WarpDest $11 $0c $f $3
	m_WarpDest $29 $02 $f $3
	m_WarpDest $2a $0c $f $3
	m_WarpDest $47 $01 $f $3
	m_WarpDest $48 $0c $f $3
	m_WarpDest $49 $02 $f $3
	m_WarpDest $4a $0d $f $3
	m_WarpDest $ef $a1 $9 $3
	m_WarpDest $73 $01 $f $3
	m_WarpDest $73 $0d $f $3
	m_WarpDest $74 $01 $f $3
	m_WarpDest $74 $0c $f $3
	m_WarpDest $75 $08 $f $3
	m_WarpDest $76 $01 $f $3
	m_WarpDest $76 $ad $9 $3
