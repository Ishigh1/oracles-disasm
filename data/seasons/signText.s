; Data format:
;
;   b0: Position ($YX)
;   b1: Room index
;   b2: Text to show (always TX_2eXX)

signTextGroupTable:
	.dw signTextGroup0Data
	.dw signTextGroup1Data
	.dw signTextGroup2Data
	.dw signTextGroup3Data
	.dw signTextGroup4Data
	.dw signTextGroup5Data
	.dw signTextGroup6Data
	.dw signTextGroup7Data

signTextGroup0Data:
signTextGroup3Data:
	;Bomb jump sign
	.db $12, $80, <TX_2e00
	;Bomb jump 2 sign
	.db $12, $81, <TX_2e01
	;Bomb jump 3 sign
	.db $14, $81, <TX_2e02
	;Bomb jump 4 sign
	.db $16, $81, <TX_2e03
	.db $00

signTextGroup1Data:
	.db $27, $45, <TX_2e07
	.db $42, $59, <TX_2e08
	.db $46, $14, <TX_2e09
	.db $00

signTextGroup2Data:
signTextGroup4Data:
	.db $17, $04, <TX_2e02
	.db $00

signTextGroup5Data:
	.db $82, $12, <TX_2e1c
signTextGroup6Data:
signTextGroup7Data:
	.db $00
