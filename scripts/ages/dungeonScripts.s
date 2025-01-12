; These are a bunch of scripts used by INTERAC_DUNGEON_SCRIPT.

dungeonScript_spawnChestOnTriggerBit0:
	stopifitemflagset
	checkflagset $00, wActiveTriggers
	scriptjump spawnChestAfterPuff


makuPathScript_spawnChestWhenActiveTriggersEq01:
	stopifitemflagset
	checkmemoryeq wActiveTriggers, $01

spawnChestAfterPuff:
	playsound SND_SOLVEPUZZLE
	createpuff
	wait 15
	settilehere TILEINDEX_CHEST
	scriptend

makuPathScript_spawnDownStairsWhenEnemiesKilled:
	stopifroomflag80set
	wait 30
	checknoenemies
	playsound SND_SOLVEPUZZLE
	orroomflag $80
	createpuff
	wait 15
	settilehere $45
	scriptend

makuPathScript_spawn30Rupees:
	stopifitemflagset
	spawnitem TREASURE_RUPEES, $0c
	scriptend

makuPathScript_keyFallsFromCeilingWhen1TorchLit:
	stopifitemflagset
	checkmemoryeq wNumTorchesLit, $01
	spawnitem TREASURE_SMALL_KEY, $01
	scriptend

makuPathScript_spawnUpStairsWhen2TorchesLit:
	stopifitemflagset
	checkmemoryeq wNumTorchesLit, $02
	orroomflag $80
	playsound SND_SOLVEPUZZLE
	createpuff
	wait 15
	settilehere $46
	scriptend


; The Pit Custom Scripts
spiritsGraveScript_startArenaTrigger:
	checkflagset $00, wMagnetGloveState
	playsound SND_RUMBLE
	shakescreen 10
	wait 20
	spawnenemy ENEMY_FLYING_TILE, $03, $50, $78
	spawnenemy ENEMY_MAGUNESU, $00, $58, $38
	spawnenemy ENEMY_MAGUNESU, $00, $18, $78
	spawnenemy ENEMY_MAGUNESU, $00, $98, $78
	spawnenemy ENEMY_MAGUNESU, $00, $58, $b8
	asm15 scriptHelp.setNumEnemiesTo1
	setcoords $38, $58
	settilehere $49
	setcoords $48, $58
	settilehere $49
	setcoords $58, $58
	settilehere $49
	setcoords $68, $58
	settilehere $49
	setcoords $78, $58
	settilehere $49
	setcoords $38, $68
	settilehere $49
	setcoords $48, $68
	settilehere $49
	setcoords $58, $68
	settilehere $49
	setcoords $68, $68
	settilehere $49
	setcoords $78, $68
	settilehere $49
	setcoords $38, $78
	settilehere $49
	setcoords $48, $78
	settilehere $49
	setcoords $58, $78
	settilehere $49
	setcoords $68, $78
	settilehere $49
	setcoords $78, $78
	settilehere $49
	setcoords $38, $88
	settilehere $49
	setcoords $48, $88
	settilehere $49
	setcoords $58, $88
	settilehere $49
	setcoords $68, $88
	settilehere $49
	setcoords $78, $88
	settilehere $49
	setcoords $38, $98
	settilehere $49
	setcoords $48, $98
	settilehere $49
	setcoords $58, $98
	settilehere $49
	setcoords $68, $98
	settilehere $49
	setcoords $78, $98
	settilehere $49
	setmusic MUS_MINIGAME
	spawninteraction $20, $06, $00, $00
	scriptend

spiritsGraveScript_spawnHeartPieceOnEnemyDeath:
	stopifitemflagset
	wait 30
	checknoenemies
	spawnitem TREASURE_HEART_PIECE, $00
	scriptend

spiritsGraveScript_spawnShovelPlatform:
	checknoenemies
	setmusic MUS_NONE
	setcoords $38, $58
	settilehere $ef
	setcoords $48, $58
	settilehere $ef
	setcoords $58, $58
	settilehere $ef
	setcoords $68, $58
	settilehere $ef
	setcoords $78, $58
	settilehere $df
	setcoords $38, $68
	settilehere $ef
	setcoords $48, $68
	settilehere $ef
	setcoords $58, $68
	settilehere $ef
	setcoords $68, $68
	settilehere $ef
	setcoords $78, $68
	settilehere $ef
	setcoords $38, $78
	playsound SND_POOF
	createpuff
	settilehere $f1
	setcoords $48, $78
	settilehere $ef
	setcoords $58, $78
	settilehere $ef
	setcoords $68, $78
	settilehere $ef
	setcoords $78, $78
	settilehere $ef
	setcoords $38, $88
	settilehere $ef
	setcoords $48, $88
	settilehere $ef
	setcoords $58, $88
	settilehere $ef
	setcoords $68, $88
	settilehere $ef
	setcoords $78, $88
	settilehere $ef
	setcoords $38, $98
	settilehere $ef
	setcoords $48, $98
	settilehere $ef
	setcoords $58, $98
	settilehere $ef
	setcoords $68, $98
	settilehere $ef
	setcoords $78, $98
	settilehere $ef
	playsound SNDCTRL_STOPSFX 
	playsound SND_DING
	wait 20
	playsound SND_DING
	wait 20
	playsound SND_DING
	wait 30
	setmusic MUS_CELESTIAL_TOWER
	scriptend

dungeonScript_refillChest:
	settilehere TILEINDEX_CHEST
	scriptend

; Create the miniboss portal when it's killed.
dungeonScript_minibossDeath:
	stopifroomflag80set
	checknoenemies
	orroomflag $80
	wait 20
	spawninteraction INTERAC_MINIBOSS_PORTAL, $00, $00, $00


enableLinkAndMenu:
	writememory wDisableLinkCollisionsAndMenu, $00
	scriptend

; Spawn a heart container when the boss is killed.
dungeonScript_bossDeath:
	jumpifroomflagset $80, ++
	checknoenemies
	orroomflag $80
++
	stopifitemflagset
	setcoords $58, $78

spawnHeartContainer:
	spawnitem TREASURE_HEART_CONTAINER, $00
	scriptjump enableLinkAndMenu

wingDungeonScript_bossDeath:
	jumpifroomflagset $80, @spawnHeart
	checknoenemies
	orroomflag $80

	; Create staircase tiles
	setcoords $a8, $48
	createpuff
	settilehere $19
	setcoords $a8, $a8
	createpuff
	settilehere $19

@spawnHeart:
	stopifitemflagset
	setcoords $98, $78
	scriptjump spawnHeartContainer


; Spawn stairs to the bracelet room when the two torches are lit.
spiritsGraveScript_stairsToBraceletRoom:
	stopifroomflag80set
	asm15 scriptHelp.makeTorchesLightable
	checkmemoryeq wNumTorchesLit, $02
	orroomflag $80
	playsound SND_SOLVEPUZZLE
	asm15 objectCreatePuff
	settilehere $45
	scriptend


wingDungeonScript_spawnFeather:
	stopifitemflagset
	spawnitem TREASURE_FEATHER, $00
	scriptend

wingDungeonScript_spawn30Rupees:
	stopifitemflagset
	spawnitem TREASURE_RUPEES, $0c
	scriptend

moonlitGrottoScript_spawnChestWhen2TorchesLit:
	stopifitemflagset
	checkmemoryeq wNumTorchesLit, $02
	scriptjump spawnChestAfterPuff


; The room with the moving platform and an orb to hit
skullDungeonScript_spawnChestWhenOrb0Hit:
	stopifitemflagset
	checkflagset $00, wToggleBlocksState
	scriptjump spawnChestAfterPuff

; The room with an orb that's being blocked by a moldorm
skullDungeonScript_spawnChestWhenOrb1Hit:
	stopifitemflagset
	checkflagset $01, wToggleBlocksState
	scriptjump spawnChestAfterPuff


; The room with 3 eyeball-statue things that need to be hit with a seed shooter
;crownDungeonScript_spawnChestWhen3TriggersActive:
;	stopifitemflagset
;	checkmemoryeq wActiveTriggers, $07
;	scriptjump spawnChestAfterPuff


;mermaidsCaveScript_spawnBridgeWhenOrbHit:
;	stopifroomflag40set
;	checkflagset $00, wToggleBlocksState
;	asm15 scriptHelp.mermaidsCave_spawnBridge_room38
;	scriptend

;mermaidsCaveScript_updateTrigger2BasedOnTriggers0And1:
;	wait 1
;	asm15 scriptHelp.setTrigger2IfTriggers0And1Set
;	scriptjump mermaidsCaveScript_updateTrigger2BasedOnTriggers0And1


; Creates a stair tile facing south when trigger 0 is activated
;ancientTombScript_spawnSouthStairsWhenTrigger0Active:
;	stopifroomflag40set
;	checkmemoryeq wActiveTriggers, $01
;	settilehere $50

;ancientTombScript_finishMakingStairs:
;	orroomflag $40
;	asm15 objectCreatePuff
;	playsound SND_SOLVEPUZZLE
;	scriptend

; Creates a stair tile facing north when trigger 0 is activated
;ancientTombScript_spawnNorthStairsWhenTrigger0Active:
;	stopifroomflag40set
;	checkmemoryeq wActiveTriggers, $01
;	settilehere $52
;	scriptjump ancientTombScript_finishMakingStairs


;ancientTombScript_retractWallWhenTrigger0Active:
;	stopifroomflag40set
;	checkmemoryeq wActiveTriggers, $01
;	disableinput
;	wait 30
;	asm15 scriptHelp.ancientTomb_startWallRetractionCutscene
;	scriptend


;ancientTombScript_spawnDownStairsWhenEnemiesKilled:
;	stopifroomflag80set
;	wait 30
;	checknoenemies
;	playsound SND_SOLVEPUZZLE
;	asm15 objectCreatePuff
;	settilehere $44
;	orroomflag $80
;	scriptend


;ancientTombScript_spawnVerticalBridgeWhenTorchLit:
;	checkmemoryeq wNumTorchesLit, $01
;	settilehere $6a
;	playsound SND_SOLVEPUZZLE
;	createpuff
;	scriptend



;herosCaveScript_spawnChestWhen4TriggersActive:
;	stopifitemflagset
;	checkmemoryeq wActiveTriggers, $0f
;	scriptjump spawnChestAfterPuff

;herosCaveScript_spawnBridgeWhenTriggerPressed:
;	stopifroomflag40set
;	checkflagset $01, wActiveTriggers
;	asm15 scriptHelp.herosCave_spawnBridge_roomc9
;	scriptend

;herosCaveScript_spawnNorthStairsWhenEnemiesKilled:
;	stopifitemflagset
;	checknoenemies
;	settilehere $52
;	playsound SND_SOLVEPUZZLE
;	scriptend



moonlitGrottoScript_brokeCrystal:
;	disableinput
;	wait 30
;	playsound SNDCTRL_STOPSFX
;	shakescreen 180
;	playsound SND_RUMBLE2
;	wait 180
;	showtext TX_1200
;	orroomflag $40
;	setstate $ff

moonlitGrottoScript_brokeAllCrystals:
;	wait 30
;	shakescreen 100
;	playsound SND_BIG_EXPLOSION
;	wait 90
;	playsound SND_SOLVEPUZZLE
;	wait 30
;	showtext TX_1201
;	setglobalflag GLOBALFLAG_D3_CRYSTALS
;	enableinput
;	asm15 scriptHelp.moonlitGrotto_enableControlAfterBreakingCrystal
;	scriptend
