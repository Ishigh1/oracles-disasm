 m_section_free chestData NAMESPACE chestData

; m_ChestData macro takes 3 parameters:
;   1: Y/X position of chest (byte); an opened chest tile will be placed here when the room is
;      loaded, if ROOMFLAG_ITEM has been set in that room.
;   2: Low byte of room index
;   3: Treasure object to get from the chest (see "data/{game}/treasureObjectData.s")
.macro m_ChestData
	.IF \1 == $ff
		; $ff is the "end of data" marker so we can't have that
		.PRINTT "ERROR: Chest Y/X position can't be $ff!\n"
		.FAIL
	.ENDIF
	.db \1 \2
	dwbe \3
.endm


; RANDO: Chest whose contents refer to an item slot
.macro m_ChestDataRando
	.db \1 \2
	dwbe \3 | $8000
.endm


chestDataGroupTable:
	.dw chestGroup0Data
	.dw chestGroup1Data
	.dw chestGroup2Data
	.dw chestGroup3Data
	.dw chestGroup4Data
	.dw chestGroup5Data
	.dw chestGroup6Data
	.dw chestGroup7Data

chestGroup0Data:
	m_ChestData $49, $51, TREASURE_OBJECT_RUPEES_04
	m_ChestDataRando $51, $49, rando.agesSlot_lynnaCityChest
	m_ChestDataRando $36, $84, rando.agesSlot_fairiesWoodsChest
	m_ChestDataRando $35, $91, rando.agesSlot_fairiesCoastChest
	m_ChestData $25, $d4, TREASURE_OBJECT_RING_23
	m_ChestDataRando $25, $d5, rando.agesSlot_zoraSeasChest
	m_ChestData $12, $63, TREASURE_OBJECT_GASHA_SEED_01
	.db $ff

chestGroup1Data:
	m_ChestDataRando $43, $6d, rando.agesSlot_seaOfNoReturn
	.db $ff

chestGroup2Data:
	m_ChestData $14, $f7, TREASURE_OBJECT_RING_11
	m_ChestData $16, $f7, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $45, $be, TREASURE_OBJECT_RING_17
	m_ChestData $22, $fc, TREASURE_OBJECT_RUPEES_06
	m_ChestDataRando $15, $ce, rando.agesSlot_tokayBombCave
	m_ChestData $34, $ec, TREASURE_OBJECT_RING_19
	m_ChestData $34, $f4, TREASURE_OBJECT_RING_19
	m_ChestDataRando $18, $4f, rando.agesSlot_fishersIslandCave
	m_ChestDataRando $14, $c0, rando.agesSlot_zoraVillagePresent
	.db $ff

chestGroup3Data:
	m_ChestData $24, $0e, TREASURE_OBJECT_RING_26
	m_ChestData $18, $1f, TREASURE_OBJECT_RUPEES_06
	m_ChestData $35, $e8, TREASURE_OBJECT_NONE_00
	m_ChestDataRando $35, $ff, rando.agesSlot_seaOfStormsPast
	m_ChestDataRando $18, $f9, rando.agesSlot_mayorPlensHouse
	m_ChestDataRando $34, $fd, rando.agesSlot_underCrescentIsland
	.db $ff

chestGroup4Data:
	m_ChestData $57, $08, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $5a, $15, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $17, $16, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $2c, $1a, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $59, $1c, TREASURE_OBJECT_RING_0e
	m_ChestData $53, $1d, TREASURE_OBJECT_COMPASS_02
	m_ChestData $73, $1f, TREASURE_OBJECT_RING_04
	m_ChestData $16, $23, TREASURE_OBJECT_BOSS_KEY_03
	m_ChestData $12, $25, TREASURE_OBJECT_MAP_02
	m_ChestData $57, $30, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $58, $3e, TREASURE_OBJECT_BOSS_KEY_03
	m_ChestData $87, $40, TREASURE_OBJECT_MAP_02
	m_ChestData $59, $41, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $1d, $45, TREASURE_OBJECT_COMPASS_02
	m_ChestData $57, $48, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $8c, $4e, TREASURE_OBJECT_RUPEES_03
	m_ChestData $28, $50, TREASURE_OBJECT_BOSS_KEY_03
	m_ChestData $4c, $55, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $69, $56, TREASURE_OBJECT_COMPASS_02
	m_ChestData $59, $58, TREASURE_OBJECT_SHOOTER_00
	m_ChestData $27, $5c, TREASURE_OBJECT_RUPEES_04
	m_ChestData $57, $60, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $58, $65, TREASURE_OBJECT_MAP_02
	m_ChestData $67, $6f, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $54, $74, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $39, $7a, TREASURE_OBJECT_BOSS_KEY_03
	m_ChestData $65, $87, TREASURE_OBJECT_SWITCH_HOOK_00
	m_ChestData $41, $8b, TREASURE_OBJECT_COMPASS_02
	m_ChestData $57, $8f, TREASURE_OBJECT_MAP_02
	m_ChestData $84, $90, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $62, $92, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $19, $99, TREASURE_OBJECT_RUPEES_05
	m_ChestData $54, $9b, TREASURE_OBJECT_BOSS_KEY_03
	m_ChestData $47, $9e, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $57, $9f, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $57, $a3, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $53, $a5, TREASURE_OBJECT_CANE_OF_SOMARIA_00
	m_ChestData $8b, $ad, TREASURE_OBJECT_COMPASS_02
	m_ChestData $57, $ba, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $57, $bc, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $17, $be, TREASURE_OBJECT_MAP_02
	m_ChestData $47, $c1, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $27, $c3, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $47, $c4, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $27, $c5, TREASURE_OBJECT_RING_1f
	m_ChestData $47, $c6, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $8b, $c7, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $47, $c8, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $8c, $c9, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $3b, $ca, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $47, $cb, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $66, $cc, TREASURE_OBJECT_RUPEES_08
	m_ChestData $57, $cf, TREASURE_OBJECT_SMALL_KEY_03
	.db $ff

chestGroup5Data:
	m_ChestData $17, $13, TREASURE_OBJECT_MERMAID_SUIT_00
	m_ChestData $25, $14, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $53, $1b, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $17, $1c, TREASURE_OBJECT_BOSS_KEY_03
	m_ChestData $13, $1d, TREASURE_OBJECT_MAP_02
	m_ChestData $13, $1f, TREASURE_OBJECT_RUPEES_02
	m_ChestData $67, $21, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $3d, $25, TREASURE_OBJECT_COMPASS_02
	m_ChestData $57, $2c, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $24, $2e, TREASURE_OBJECT_RUPEES_04
	m_ChestData $57, $31, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $55, $3c, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $53, $3f, TREASURE_OBJECT_COMPASS_02
	m_ChestData $52, $41, TREASURE_OBJECT_MAP_02
	m_ChestData $57, $45, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $31, $4c, TREASURE_OBJECT_RING_28
	m_ChestData $18, $4d, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $12, $4e, TREASURE_OBJECT_SWITCH_HOOK_01
	m_ChestData $28, $53, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $47, $54, TREASURE_OBJECT_COMPASS_02
	m_ChestData $56, $5f, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $57, $64, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $42, $65, TREASURE_OBJECT_MAP_02
	m_ChestData $27, $6a, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $57, $6c, TREASURE_OBJECT_BOSS_KEY_03
	m_ChestData $6c, $72, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $57, $50, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $12, $79, TREASURE_OBJECT_BOSS_KEY_03
	m_ChestData $16, $7b, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $27, $7c, TREASURE_OBJECT_SLATE_00
	m_ChestData $27, $7e, TREASURE_OBJECT_SLATE_00
	m_ChestData $1b, $85, TREASURE_OBJECT_MAP_02
	m_ChestData $27, $92, TREASURE_OBJECT_SLATE_00
	m_ChestData $25, $94, TREASURE_OBJECT_SLATE_00
	m_ChestData $16, $97, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $2c, $9f, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $1d, $a3, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $1a, $a4, TREASURE_OBJECT_COMPASS_02
	m_ChestData $6d, $a7, TREASURE_OBJECT_SMALL_KEY_03
	m_ChestData $37, $a6, TREASURE_OBJECT_BRACELET_02
	m_ChestData $27, $91, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $15, $b5, TREASURE_OBJECT_RUPEES_04
	m_ChestData $74, $bd, TREASURE_OBJECT_RING_16
	m_ChestData $47, $b9, TREASURE_OBJECT_RUPEES_05
	m_ChestData $15, $ee, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $15, $dd, TREASURE_OBJECT_BOMBS_00
	m_ChestData $81, $c0, TREASURE_OBJECT_RUPEES_04
	m_ChestData $24, $c0, TREASURE_OBJECT_RUPEES_04
	m_ChestData $83, $e1, TREASURE_OBJECT_RUPEES_05
	m_ChestData $22, $e0, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $47, $b3, TREASURE_OBJECT_GASHA_SEED_01
	m_ChestData $57, $cb, TREASURE_OBJECT_RING_1c
	m_ChestDataRando $43, $c7, rando.agesSlot_zoraNWCave
	m_ChestDataRando $12, $ca, rando.agesSlot_tokayCrystalCave
	m_ChestData $22, $b8, TREASURE_OBJECT_RING_19
	m_ChestDataRando $14, $ac, rando.agesSlot_zoraPalaceChest
	m_ChestDataRando $12, $f7, rando.agesSlot_tokayPotCave
chestGroup6Data:
chestGroup7Data:
	.db $ff

.ends
