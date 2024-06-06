; HACK-BASE: Expanded GFX, tilemap, and collision data for tilesets are stored here.

.BANK $18 SLOT 1
.ORG 0

; Bank $18 used to store tileset-related things, but the handling has changed. Now it just stores
; pointers to the real data.


expandedTilesetGfxTable:
	3BytePointer gfx_tileset00
	3BytePointer gfx_tileset01
	3BytePointer gfx_tileset02
	3BytePointer gfx_tileset03
	3BytePointer gfx_tileset04
	3BytePointer gfx_tileset05
	3BytePointer gfx_tileset06
	3BytePointer gfx_tileset07
	3BytePointer gfx_tileset08
	3BytePointer gfx_tileset09
	3BytePointer gfx_tileset0a
	3BytePointer gfx_tileset0b
	3BytePointer gfx_tileset0c
	3BytePointer gfx_tileset0d
	3BytePointer gfx_tileset0e
	3BytePointer gfx_tileset0f
	3BytePointer gfx_tileset10
	3BytePointer gfx_tileset11
	3BytePointer gfx_tileset12
	3BytePointer gfx_tileset13
	3BytePointer gfx_tileset14
	3BytePointer gfx_tileset15
	3BytePointer gfx_tileset16
	3BytePointer gfx_tileset17
	3BytePointer gfx_tileset18
	3BytePointer gfx_tileset19
	3BytePointer gfx_tileset1a
	3BytePointer gfx_tileset1b
	3BytePointer gfx_tileset1c
	3BytePointer gfx_tileset1d
	3BytePointer gfx_tileset1e
	3BytePointer gfx_tileset1f
	3BytePointer gfx_tileset20
	3BytePointer gfx_tileset21
	3BytePointer gfx_tileset22
	3BytePointer gfx_tileset23
	3BytePointer gfx_tileset24
	3BytePointer gfx_tileset25
	3BytePointer gfx_tileset26
	3BytePointer gfx_tileset27
	3BytePointer gfx_tileset28
	3BytePointer gfx_tileset29
	3BytePointer gfx_tileset2a
	3BytePointer gfx_tileset2b
	3BytePointer gfx_tileset2c
	3BytePointer gfx_tileset2d
	3BytePointer gfx_tileset2e
	3BytePointer gfx_tileset2f
	3BytePointer gfx_tileset30
	3BytePointer gfx_tileset31
	3BytePointer gfx_tileset32
	3BytePointer gfx_tileset33
	3BytePointer gfx_tileset34
	3BytePointer gfx_tileset35
	3BytePointer gfx_tileset36
	3BytePointer gfx_tileset37
	3BytePointer gfx_tileset38
	3BytePointer gfx_tileset39
	3BytePointer gfx_tileset3a
	3BytePointer gfx_tileset3b
	3BytePointer gfx_tileset3c
	3BytePointer gfx_tileset3d
	3BytePointer gfx_tileset3e
	3BytePointer gfx_tileset3f
	3BytePointer gfx_tileset40
	3BytePointer gfx_tileset41
	3BytePointer gfx_tileset42
	3BytePointer gfx_tileset43
	3BytePointer gfx_tileset44
	3BytePointer gfx_tileset45
	3BytePointer gfx_tileset46
	3BytePointer gfx_tileset47
	3BytePointer gfx_tileset48
	3BytePointer gfx_tileset49
	3BytePointer gfx_tileset4a
	3BytePointer gfx_tileset4b
	3BytePointer gfx_tileset4c
	3BytePointer gfx_tileset4d
	3BytePointer gfx_tileset4e
	3BytePointer gfx_tileset4f
	3BytePointer gfx_tileset50
	3BytePointer gfx_tileset51
	3BytePointer gfx_tileset52
	3BytePointer gfx_tileset53
	3BytePointer gfx_tileset54
	3BytePointer gfx_tileset55
	3BytePointer gfx_tileset56
	3BytePointer gfx_tileset57
	3BytePointer gfx_tileset58
	3BytePointer gfx_tileset59
	3BytePointer gfx_tileset5a
	3BytePointer gfx_tileset5b
	3BytePointer gfx_tileset5c
	3BytePointer gfx_tileset5d
	3BytePointer gfx_tileset5e
	3BytePointer gfx_tileset5f
	3BytePointer gfx_tileset60
	3BytePointer gfx_tileset61
	3BytePointer gfx_tileset62
	3BytePointer gfx_tileset63
	3BytePointer gfx_tileset64
	3BytePointer gfx_tileset65
	3BytePointer gfx_tileset66
	3BytePointer gfx_tileset67
	3BytePointer gfx_tileset68
	3BytePointer gfx_tileset69
	3BytePointer gfx_tileset6a
	3BytePointer gfx_tileset6b
	3BytePointer gfx_tileset6c
	3BytePointer gfx_tileset6d
	3BytePointer gfx_tileset6e
	3BytePointer gfx_tileset6f
	3BytePointer gfx_tileset70
	3BytePointer gfx_tileset71
	3BytePointer gfx_tileset72
	3BytePointer gfx_tileset73
	3BytePointer gfx_tileset74
	3BytePointer gfx_tileset75
	3BytePointer gfx_tileset76
	3BytePointer gfx_tileset77
	3BytePointer gfx_tileset78
	3BytePointer gfx_tileset79
	3BytePointer gfx_tileset7a
	3BytePointer gfx_tileset7b
	3BytePointer gfx_tileset7c
	3BytePointer gfx_tileset7d
	3BytePointer gfx_tileset7e
	3BytePointer gfx_tileset7f


expandedTilesetMappingsTable:
	3BytePointer tilesetMappings00
	3BytePointer tilesetMappings01
	3BytePointer tilesetMappings02
	3BytePointer tilesetMappings03
	3BytePointer tilesetMappings04
	3BytePointer tilesetMappings05
	3BytePointer tilesetMappings06
	3BytePointer tilesetMappings07
	3BytePointer tilesetMappings08
	3BytePointer tilesetMappings09
	3BytePointer tilesetMappings0a
	3BytePointer tilesetMappings0b
	3BytePointer tilesetMappings0c
	3BytePointer tilesetMappings0d
	3BytePointer tilesetMappings0e
	3BytePointer tilesetMappings0f
	3BytePointer tilesetMappings10
	3BytePointer tilesetMappings11
	3BytePointer tilesetMappings12
	3BytePointer tilesetMappings13
	3BytePointer tilesetMappings14
	3BytePointer tilesetMappings15
	3BytePointer tilesetMappings16
	3BytePointer tilesetMappings17
	3BytePointer tilesetMappings18
	3BytePointer tilesetMappings19
	3BytePointer tilesetMappings1a
	3BytePointer tilesetMappings1b
	3BytePointer tilesetMappings1c
	3BytePointer tilesetMappings1d
	3BytePointer tilesetMappings1e
	3BytePointer tilesetMappings1f
	3BytePointer tilesetMappings20
	3BytePointer tilesetMappings21
	3BytePointer tilesetMappings22
	3BytePointer tilesetMappings23
	3BytePointer tilesetMappings24
	3BytePointer tilesetMappings25
	3BytePointer tilesetMappings26
	3BytePointer tilesetMappings27
	3BytePointer tilesetMappings28
	3BytePointer tilesetMappings29
	3BytePointer tilesetMappings2a
	3BytePointer tilesetMappings2b
	3BytePointer tilesetMappings2c
	3BytePointer tilesetMappings2d
	3BytePointer tilesetMappings2e
	3BytePointer tilesetMappings2f
	3BytePointer tilesetMappings30
	3BytePointer tilesetMappings31
	3BytePointer tilesetMappings32
	3BytePointer tilesetMappings33
	3BytePointer tilesetMappings34
	3BytePointer tilesetMappings35
	3BytePointer tilesetMappings36
	3BytePointer tilesetMappings37
	3BytePointer tilesetMappings38
	3BytePointer tilesetMappings39
	3BytePointer tilesetMappings3a
	3BytePointer tilesetMappings3b
	3BytePointer tilesetMappings3c
	3BytePointer tilesetMappings3d
	3BytePointer tilesetMappings3e
	3BytePointer tilesetMappings3f
	3BytePointer tilesetMappings40
	3BytePointer tilesetMappings41
	3BytePointer tilesetMappings42
	3BytePointer tilesetMappings43
	3BytePointer tilesetMappings44
	3BytePointer tilesetMappings45
	3BytePointer tilesetMappings46
	3BytePointer tilesetMappings47
	3BytePointer tilesetMappings48
	3BytePointer tilesetMappings49
	3BytePointer tilesetMappings4a
	3BytePointer tilesetMappings4b
	3BytePointer tilesetMappings4c
	3BytePointer tilesetMappings4d
	3BytePointer tilesetMappings4e
	3BytePointer tilesetMappings4f
	3BytePointer tilesetMappings50
	3BytePointer tilesetMappings51
	3BytePointer tilesetMappings52
	3BytePointer tilesetMappings53
	3BytePointer tilesetMappings54
	3BytePointer tilesetMappings55
	3BytePointer tilesetMappings56
	3BytePointer tilesetMappings57
	3BytePointer tilesetMappings58
	3BytePointer tilesetMappings59
	3BytePointer tilesetMappings5a
	3BytePointer tilesetMappings5b
	3BytePointer tilesetMappings5c
	3BytePointer tilesetMappings5d
	3BytePointer tilesetMappings5e
	3BytePointer tilesetMappings5f
	3BytePointer tilesetMappings60
	3BytePointer tilesetMappings61
	3BytePointer tilesetMappings62
	3BytePointer tilesetMappings63
	3BytePointer tilesetMappings64
	3BytePointer tilesetMappings65
	3BytePointer tilesetMappings66
	3BytePointer tilesetMappings67
	3BytePointer tilesetMappings68
	3BytePointer tilesetMappings69
	3BytePointer tilesetMappings6a
	3BytePointer tilesetMappings6b
	3BytePointer tilesetMappings6c
	3BytePointer tilesetMappings6d
	3BytePointer tilesetMappings6e
	3BytePointer tilesetMappings6f
	3BytePointer tilesetMappings70
	3BytePointer tilesetMappings71
	3BytePointer tilesetMappings72
	3BytePointer tilesetMappings73
	3BytePointer tilesetMappings74
	3BytePointer tilesetMappings75
	3BytePointer tilesetMappings76
	3BytePointer tilesetMappings77
	3BytePointer tilesetMappings78
	3BytePointer tilesetMappings79
	3BytePointer tilesetMappings7a
	3BytePointer tilesetMappings7b
	3BytePointer tilesetMappings7c
	3BytePointer tilesetMappings7d
	3BytePointer tilesetMappings7e
	3BytePointer tilesetMappings7f


expandedTilesetCollisionsTable:
	3BytePointer tilesetCollisions00
	3BytePointer tilesetCollisions01
	3BytePointer tilesetCollisions02
	3BytePointer tilesetCollisions03
	3BytePointer tilesetCollisions04
	3BytePointer tilesetCollisions05
	3BytePointer tilesetCollisions06
	3BytePointer tilesetCollisions07
	3BytePointer tilesetCollisions08
	3BytePointer tilesetCollisions09
	3BytePointer tilesetCollisions0a
	3BytePointer tilesetCollisions0b
	3BytePointer tilesetCollisions0c
	3BytePointer tilesetCollisions0d
	3BytePointer tilesetCollisions0e
	3BytePointer tilesetCollisions0f
	3BytePointer tilesetCollisions10
	3BytePointer tilesetCollisions11
	3BytePointer tilesetCollisions12
	3BytePointer tilesetCollisions13
	3BytePointer tilesetCollisions14
	3BytePointer tilesetCollisions15
	3BytePointer tilesetCollisions16
	3BytePointer tilesetCollisions17
	3BytePointer tilesetCollisions18
	3BytePointer tilesetCollisions19
	3BytePointer tilesetCollisions1a
	3BytePointer tilesetCollisions1b
	3BytePointer tilesetCollisions1c
	3BytePointer tilesetCollisions1d
	3BytePointer tilesetCollisions1e
	3BytePointer tilesetCollisions1f
	3BytePointer tilesetCollisions20
	3BytePointer tilesetCollisions21
	3BytePointer tilesetCollisions22
	3BytePointer tilesetCollisions23
	3BytePointer tilesetCollisions24
	3BytePointer tilesetCollisions25
	3BytePointer tilesetCollisions26
	3BytePointer tilesetCollisions27
	3BytePointer tilesetCollisions28
	3BytePointer tilesetCollisions29
	3BytePointer tilesetCollisions2a
	3BytePointer tilesetCollisions2b
	3BytePointer tilesetCollisions2c
	3BytePointer tilesetCollisions2d
	3BytePointer tilesetCollisions2e
	3BytePointer tilesetCollisions2f
	3BytePointer tilesetCollisions30
	3BytePointer tilesetCollisions31
	3BytePointer tilesetCollisions32
	3BytePointer tilesetCollisions33
	3BytePointer tilesetCollisions34
	3BytePointer tilesetCollisions35
	3BytePointer tilesetCollisions36
	3BytePointer tilesetCollisions37
	3BytePointer tilesetCollisions38
	3BytePointer tilesetCollisions39
	3BytePointer tilesetCollisions3a
	3BytePointer tilesetCollisions3b
	3BytePointer tilesetCollisions3c
	3BytePointer tilesetCollisions3d
	3BytePointer tilesetCollisions3e
	3BytePointer tilesetCollisions3f
	3BytePointer tilesetCollisions40
	3BytePointer tilesetCollisions41
	3BytePointer tilesetCollisions42
	3BytePointer tilesetCollisions43
	3BytePointer tilesetCollisions44
	3BytePointer tilesetCollisions45
	3BytePointer tilesetCollisions46
	3BytePointer tilesetCollisions47
	3BytePointer tilesetCollisions48
	3BytePointer tilesetCollisions49
	3BytePointer tilesetCollisions4a
	3BytePointer tilesetCollisions4b
	3BytePointer tilesetCollisions4c
	3BytePointer tilesetCollisions4d
	3BytePointer tilesetCollisions4e
	3BytePointer tilesetCollisions4f
	3BytePointer tilesetCollisions50
	3BytePointer tilesetCollisions51
	3BytePointer tilesetCollisions52
	3BytePointer tilesetCollisions53
	3BytePointer tilesetCollisions54
	3BytePointer tilesetCollisions55
	3BytePointer tilesetCollisions56
	3BytePointer tilesetCollisions57
	3BytePointer tilesetCollisions58
	3BytePointer tilesetCollisions59
	3BytePointer tilesetCollisions5a
	3BytePointer tilesetCollisions5b
	3BytePointer tilesetCollisions5c
	3BytePointer tilesetCollisions5d
	3BytePointer tilesetCollisions5e
	3BytePointer tilesetCollisions5f
	3BytePointer tilesetCollisions60
	3BytePointer tilesetCollisions61
	3BytePointer tilesetCollisions62
	3BytePointer tilesetCollisions63
	3BytePointer tilesetCollisions64
	3BytePointer tilesetCollisions65
	3BytePointer tilesetCollisions66
	3BytePointer tilesetCollisions67
	3BytePointer tilesetCollisions68
	3BytePointer tilesetCollisions69
	3BytePointer tilesetCollisions6a
	3BytePointer tilesetCollisions6b
	3BytePointer tilesetCollisions6c
	3BytePointer tilesetCollisions6d
	3BytePointer tilesetCollisions6e
	3BytePointer tilesetCollisions6f
	3BytePointer tilesetCollisions70
	3BytePointer tilesetCollisions71
	3BytePointer tilesetCollisions72
	3BytePointer tilesetCollisions73
	3BytePointer tilesetCollisions74
	3BytePointer tilesetCollisions75
	3BytePointer tilesetCollisions76
	3BytePointer tilesetCollisions77
	3BytePointer tilesetCollisions78
	3BytePointer tilesetCollisions79
	3BytePointer tilesetCollisions7a
	3BytePointer tilesetCollisions7b
	3BytePointer tilesetCollisions7c
	3BytePointer tilesetCollisions7d
	3BytePointer tilesetCollisions7e
	3BytePointer tilesetCollisions7f


.BANK $40 SLOT 1
.ORG 0

.redefine DATA_ADDR $4000
.redefine DATA_BANK $40

	; For simplicity I'm using the "m_GfxData" macro, which crosses banks.
	; But since each tileset is exactly 0x1000 bytes (and is uncompressed) I don't need to deal
	; with bank crossing.
	m_GfxData gfx_tileset00
	m_GfxData gfx_tileset01
	m_GfxData gfx_tileset02
	m_GfxData gfx_tileset03
	m_GfxData gfx_tileset04
	m_GfxData gfx_tileset05
	m_GfxData gfx_tileset06
	m_GfxData gfx_tileset07
	m_GfxData gfx_tileset08
	m_GfxData gfx_tileset09
	m_GfxData gfx_tileset0a
	m_GfxData gfx_tileset0b
	m_GfxData gfx_tileset0c
	m_GfxData gfx_tileset0d
	m_GfxData gfx_tileset0e
	m_GfxData gfx_tileset0f
	m_GfxData gfx_tileset10
	m_GfxData gfx_tileset11
	m_GfxData gfx_tileset12
	m_GfxData gfx_tileset13
	m_GfxData gfx_tileset14
	m_GfxData gfx_tileset15
	m_GfxData gfx_tileset16
	m_GfxData gfx_tileset17
	m_GfxData gfx_tileset18
	m_GfxData gfx_tileset19
	m_GfxData gfx_tileset1a
	m_GfxData gfx_tileset1b
	m_GfxData gfx_tileset1c
	m_GfxData gfx_tileset1d
	m_GfxData gfx_tileset1e
	m_GfxData gfx_tileset1f
	m_GfxData gfx_tileset20
	m_GfxData gfx_tileset21
	m_GfxData gfx_tileset22
	m_GfxData gfx_tileset23
	m_GfxData gfx_tileset24
	m_GfxData gfx_tileset25
	m_GfxData gfx_tileset26
	m_GfxData gfx_tileset27
	m_GfxData gfx_tileset28
	m_GfxData gfx_tileset29
	m_GfxData gfx_tileset2a
	m_GfxData gfx_tileset2b
	m_GfxData gfx_tileset2c
	m_GfxData gfx_tileset2d
	m_GfxData gfx_tileset2e
	m_GfxData gfx_tileset2f
	m_GfxData gfx_tileset30
	m_GfxData gfx_tileset31
	m_GfxData gfx_tileset32
	m_GfxData gfx_tileset33
	m_GfxData gfx_tileset34
	m_GfxData gfx_tileset35
	m_GfxData gfx_tileset36
	m_GfxData gfx_tileset37
	m_GfxData gfx_tileset38
	m_GfxData gfx_tileset39
	m_GfxData gfx_tileset3a
	m_GfxData gfx_tileset3b
	m_GfxData gfx_tileset3c
	m_GfxData gfx_tileset3d
	m_GfxData gfx_tileset3e
	m_GfxData gfx_tileset3f
	m_GfxData gfx_tileset40
	m_GfxData gfx_tileset41
	m_GfxData gfx_tileset42
	m_GfxData gfx_tileset43
	m_GfxData gfx_tileset44
	m_GfxData gfx_tileset45
	m_GfxData gfx_tileset46
	m_GfxData gfx_tileset47
	m_GfxData gfx_tileset48
	m_GfxData gfx_tileset49
	m_GfxData gfx_tileset4a
	m_GfxData gfx_tileset4b
	m_GfxData gfx_tileset4c
	m_GfxData gfx_tileset4d
	m_GfxData gfx_tileset4e
	m_GfxData gfx_tileset4f
	m_GfxData gfx_tileset50
	m_GfxData gfx_tileset51
	m_GfxData gfx_tileset52
	m_GfxData gfx_tileset53
	m_GfxData gfx_tileset54
	m_GfxData gfx_tileset55
	m_GfxData gfx_tileset56
	m_GfxData gfx_tileset57
	m_GfxData gfx_tileset58
	m_GfxData gfx_tileset59
	m_GfxData gfx_tileset5a
	m_GfxData gfx_tileset5b
	m_GfxData gfx_tileset5c
	m_GfxData gfx_tileset5d
	m_GfxData gfx_tileset5e
	m_GfxData gfx_tileset5f
	m_GfxData gfx_tileset60
	m_GfxData gfx_tileset61
	m_GfxData gfx_tileset62
	m_GfxData gfx_tileset63
	m_GfxData gfx_tileset64
	m_GfxData gfx_tileset65
	m_GfxData gfx_tileset66
	m_GfxData gfx_tileset67
	m_GfxData gfx_tileset68
	m_GfxData gfx_tileset69
	m_GfxData gfx_tileset6a
	m_GfxData gfx_tileset6b
	m_GfxData gfx_tileset6c
	m_GfxData gfx_tileset6d
	m_GfxData gfx_tileset6e
	m_GfxData gfx_tileset6f
	m_GfxData gfx_tileset70
	m_GfxData gfx_tileset71
	m_GfxData gfx_tileset72
	m_GfxData gfx_tileset73
	m_GfxData gfx_tileset74
	m_GfxData gfx_tileset75
	m_GfxData gfx_tileset76
	m_GfxData gfx_tileset77
	m_GfxData gfx_tileset78
	m_GfxData gfx_tileset79
	m_GfxData gfx_tileset7a
	m_GfxData gfx_tileset7b
	m_GfxData gfx_tileset7c
	m_GfxData gfx_tileset7d
	m_GfxData gfx_tileset7e
	m_GfxData gfx_tileset7f

.BANK $60 SLOT 1
.ORG 0

tilesetMappings00:
	.incbin "tileset_layouts/ages/tilesetMappings00.bin"
tilesetMappings01:
	.incbin "tileset_layouts/ages/tilesetMappings01.bin"
tilesetMappings02:
	.incbin "tileset_layouts/ages/tilesetMappings02.bin"
tilesetMappings03:
	.incbin "tileset_layouts/ages/tilesetMappings03.bin"
tilesetMappings04:
	.incbin "tileset_layouts/ages/tilesetMappings04.bin"
tilesetMappings05:
	.incbin "tileset_layouts/ages/tilesetMappings05.bin"
tilesetMappings06:
	.incbin "tileset_layouts/ages/tilesetMappings06.bin"
tilesetMappings07:
	.incbin "tileset_layouts/ages/tilesetMappings07.bin"

.BANK $61 SLOT 1
.ORG 0

tilesetMappings08:
	.incbin "tileset_layouts/ages/tilesetMappings08.bin"
tilesetMappings09:
	.incbin "tileset_layouts/ages/tilesetMappings09.bin"
tilesetMappings0a:
	.incbin "tileset_layouts/ages/tilesetMappings0a.bin"
tilesetMappings0b:
	.incbin "tileset_layouts/ages/tilesetMappings0b.bin"
tilesetMappings0c:
	.incbin "tileset_layouts/ages/tilesetMappings0c.bin"
tilesetMappings0d:
	.incbin "tileset_layouts/ages/tilesetMappings0d.bin"
tilesetMappings0e:
	.incbin "tileset_layouts/ages/tilesetMappings0e.bin"
tilesetMappings0f:
	.incbin "tileset_layouts/ages/tilesetMappings0f.bin"

.BANK $62 SLOT 1
.ORG 0

tilesetMappings10:
	.incbin "tileset_layouts/ages/tilesetMappings10.bin"
tilesetMappings11:
	.incbin "tileset_layouts/ages/tilesetMappings11.bin"
tilesetMappings12:
	.incbin "tileset_layouts/ages/tilesetMappings12.bin"
tilesetMappings13:
	.incbin "tileset_layouts/ages/tilesetMappings13.bin"
tilesetMappings14:
	.incbin "tileset_layouts/ages/tilesetMappings14.bin"
tilesetMappings15:
	.incbin "tileset_layouts/ages/tilesetMappings15.bin"
tilesetMappings16:
	.incbin "tileset_layouts/ages/tilesetMappings16.bin"
tilesetMappings17:
	.incbin "tileset_layouts/ages/tilesetMappings17.bin"

.BANK $63 SLOT 1
.ORG 0

tilesetMappings18:
	.incbin "tileset_layouts/ages/tilesetMappings18.bin"
tilesetMappings19:
	.incbin "tileset_layouts/ages/tilesetMappings19.bin"
tilesetMappings1a:
	.incbin "tileset_layouts/ages/tilesetMappings1a.bin"
tilesetMappings1b:
	.incbin "tileset_layouts/ages/tilesetMappings1b.bin"
tilesetMappings1c:
	.incbin "tileset_layouts/ages/tilesetMappings1c.bin"
tilesetMappings1d:
	.incbin "tileset_layouts/ages/tilesetMappings1d.bin"
tilesetMappings1e:
	.incbin "tileset_layouts/ages/tilesetMappings1e.bin"
tilesetMappings1f:
	.incbin "tileset_layouts/ages/tilesetMappings1f.bin"

.BANK $64 SLOT 1
.ORG 0

tilesetMappings20:
	.incbin "tileset_layouts/ages/tilesetMappings20.bin"
tilesetMappings21:
	.incbin "tileset_layouts/ages/tilesetMappings21.bin"
tilesetMappings22:
	.incbin "tileset_layouts/ages/tilesetMappings22.bin"
tilesetMappings23:
	.incbin "tileset_layouts/ages/tilesetMappings23.bin"
tilesetMappings24:
	.incbin "tileset_layouts/ages/tilesetMappings24.bin"
tilesetMappings25:
	.incbin "tileset_layouts/ages/tilesetMappings25.bin"
tilesetMappings26:
	.incbin "tileset_layouts/ages/tilesetMappings26.bin"
tilesetMappings27:
	.incbin "tileset_layouts/ages/tilesetMappings27.bin"

.BANK $65 SLOT 1
.ORG 0

tilesetMappings28:
	.incbin "tileset_layouts/ages/tilesetMappings28.bin"
tilesetMappings29:
	.incbin "tileset_layouts/ages/tilesetMappings29.bin"
tilesetMappings2a:
	.incbin "tileset_layouts/ages/tilesetMappings2a.bin"
tilesetMappings2b:
	.incbin "tileset_layouts/ages/tilesetMappings2b.bin"
tilesetMappings2c:
	.incbin "tileset_layouts/ages/tilesetMappings2c.bin"
tilesetMappings2d:
	.incbin "tileset_layouts/ages/tilesetMappings2d.bin"
tilesetMappings2e:
	.incbin "tileset_layouts/ages/tilesetMappings2e.bin"
tilesetMappings2f:
	.incbin "tileset_layouts/ages/tilesetMappings2f.bin"

.BANK $66 SLOT 1
.ORG 0

tilesetMappings30:
	.incbin "tileset_layouts/ages/tilesetMappings30.bin"
tilesetMappings31:
	.incbin "tileset_layouts/ages/tilesetMappings31.bin"
tilesetMappings32:
	.incbin "tileset_layouts/ages/tilesetMappings32.bin"
tilesetMappings33:
	.incbin "tileset_layouts/ages/tilesetMappings33.bin"
tilesetMappings34:
	.incbin "tileset_layouts/ages/tilesetMappings34.bin"
tilesetMappings35:
	.incbin "tileset_layouts/ages/tilesetMappings35.bin"
tilesetMappings36:
	.incbin "tileset_layouts/ages/tilesetMappings36.bin"
tilesetMappings37:
	.incbin "tileset_layouts/ages/tilesetMappings37.bin"

.BANK $67 SLOT 1
.ORG 0

tilesetMappings38:
	.incbin "tileset_layouts/ages/tilesetMappings38.bin"
tilesetMappings39:
	.incbin "tileset_layouts/ages/tilesetMappings39.bin"
tilesetMappings3a:
	.incbin "tileset_layouts/ages/tilesetMappings3a.bin"
tilesetMappings3b:
	.incbin "tileset_layouts/ages/tilesetMappings3b.bin"
tilesetMappings3c:
	.incbin "tileset_layouts/ages/tilesetMappings3c.bin"
tilesetMappings3d:
	.incbin "tileset_layouts/ages/tilesetMappings3d.bin"
tilesetMappings3e:
	.incbin "tileset_layouts/ages/tilesetMappings3e.bin"
tilesetMappings3f:
	.incbin "tileset_layouts/ages/tilesetMappings3f.bin"

.BANK $68 SLOT 1
.ORG 0

tilesetMappings40:
	.incbin "tileset_layouts/ages/tilesetMappings40.bin"
tilesetMappings41:
	.incbin "tileset_layouts/ages/tilesetMappings41.bin"
tilesetMappings42:
	.incbin "tileset_layouts/ages/tilesetMappings42.bin"
tilesetMappings43:
	.incbin "tileset_layouts/ages/tilesetMappings43.bin"
tilesetMappings44:
	.incbin "tileset_layouts/ages/tilesetMappings44.bin"
tilesetMappings45:
	.incbin "tileset_layouts/ages/tilesetMappings45.bin"
tilesetMappings46:
	.incbin "tileset_layouts/ages/tilesetMappings46.bin"
tilesetMappings47:
	.incbin "tileset_layouts/ages/tilesetMappings47.bin"

.BANK $69 SLOT 1
.ORG 0

tilesetMappings48:
	.incbin "tileset_layouts/ages/tilesetMappings48.bin"
tilesetMappings49:
	.incbin "tileset_layouts/ages/tilesetMappings49.bin"
tilesetMappings4a:
	.incbin "tileset_layouts/ages/tilesetMappings4a.bin"
tilesetMappings4b:
	.incbin "tileset_layouts/ages/tilesetMappings4b.bin"
tilesetMappings4c:
	.incbin "tileset_layouts/ages/tilesetMappings4c.bin"
tilesetMappings4d:
	.incbin "tileset_layouts/ages/tilesetMappings4d.bin"
tilesetMappings4e:
	.incbin "tileset_layouts/ages/tilesetMappings4e.bin"
tilesetMappings4f:
	.incbin "tileset_layouts/ages/tilesetMappings4f.bin"

.BANK $6a SLOT 1
.ORG 0

tilesetMappings50:
	.incbin "tileset_layouts/ages/tilesetMappings50.bin"
tilesetMappings51:
	.incbin "tileset_layouts/ages/tilesetMappings51.bin"
tilesetMappings52:
	.incbin "tileset_layouts/ages/tilesetMappings52.bin"
tilesetMappings53:
	.incbin "tileset_layouts/ages/tilesetMappings53.bin"
tilesetMappings54:
	.incbin "tileset_layouts/ages/tilesetMappings54.bin"
tilesetMappings55:
	.incbin "tileset_layouts/ages/tilesetMappings55.bin"
tilesetMappings56:
	.incbin "tileset_layouts/ages/tilesetMappings56.bin"
tilesetMappings57:
	.incbin "tileset_layouts/ages/tilesetMappings57.bin"

.BANK $6b SLOT 1
.ORG 0

tilesetMappings58:
	.incbin "tileset_layouts/ages/tilesetMappings58.bin"
tilesetMappings59:
	.incbin "tileset_layouts/ages/tilesetMappings59.bin"
tilesetMappings5a:
	.incbin "tileset_layouts/ages/tilesetMappings5a.bin"
tilesetMappings5b:
	.incbin "tileset_layouts/ages/tilesetMappings5b.bin"
tilesetMappings5c:
	.incbin "tileset_layouts/ages/tilesetMappings5c.bin"
tilesetMappings5d:
	.incbin "tileset_layouts/ages/tilesetMappings5d.bin"
tilesetMappings5e:
	.incbin "tileset_layouts/ages/tilesetMappings5e.bin"
tilesetMappings5f:
	.incbin "tileset_layouts/ages/tilesetMappings5f.bin"

.BANK $6c SLOT 1
.ORG 0

tilesetMappings60:
	.incbin "tileset_layouts/ages/tilesetMappings60.bin"
tilesetMappings61:
	.incbin "tileset_layouts/ages/tilesetMappings61.bin"
tilesetMappings62:
	.incbin "tileset_layouts/ages/tilesetMappings62.bin"
tilesetMappings63:
	.incbin "tileset_layouts/ages/tilesetMappings63.bin"
tilesetMappings64:
	.incbin "tileset_layouts/ages/tilesetMappings64.bin"
tilesetMappings65:
	.incbin "tileset_layouts/ages/tilesetMappings65.bin"
tilesetMappings66:
	.incbin "tileset_layouts/ages/tilesetMappings66.bin"
 tilesetMappings67:
	.incbin "tileset_layouts/ages/tilesetMappings67.bin"

.BANK $6d SLOT 1
.ORG 0

tilesetMappings68:
	.incbin "tileset_layouts/ages/tilesetMappings68.bin"
tilesetMappings69:
	.incbin "tileset_layouts/ages/tilesetMappings69.bin"
tilesetMappings6a:
	.incbin "tileset_layouts/ages/tilesetMappings6a.bin"
tilesetMappings6b:
	.incbin "tileset_layouts/ages/tilesetMappings6b.bin"
tilesetMappings6c:
	.incbin "tileset_layouts/ages/tilesetMappings6c.bin"
tilesetMappings6d:
	.incbin "tileset_layouts/ages/tilesetMappings6d.bin"
tilesetMappings6e:
	.incbin "tileset_layouts/ages/tilesetMappings6e.bin"
tilesetMappings6f:
	.incbin "tileset_layouts/ages/tilesetMappings6f.bin"

.BANK $6e SLOT 1
.ORG 0

tilesetMappings70:
	.incbin "tileset_layouts/ages/tilesetMappings70.bin"
tilesetMappings71:
	.incbin "tileset_layouts/ages/tilesetMappings71.bin"
tilesetMappings72:
	.incbin "tileset_layouts/ages/tilesetMappings72.bin"
tilesetMappings73:
	.incbin "tileset_layouts/ages/tilesetMappings73.bin"
tilesetMappings74:
	.incbin "tileset_layouts/ages/tilesetMappings74.bin"
tilesetMappings75:
	.incbin "tileset_layouts/ages/tilesetMappings75.bin"
tilesetMappings76:
	.incbin "tileset_layouts/ages/tilesetMappings76.bin"
tilesetMappings77:
	.incbin "tileset_layouts/ages/tilesetMappings77.bin"

.BANK $6f SLOT 1
.ORG 0

tilesetMappings78:
	.incbin "tileset_layouts/ages/tilesetMappings78.bin"
tilesetMappings79:
	.incbin "tileset_layouts/ages/tilesetMappings79.bin"
tilesetMappings7a:
	.incbin "tileset_layouts/ages/tilesetMappings7a.bin"
tilesetMappings7b:
	.incbin "tileset_layouts/ages/tilesetMappings7b.bin"
tilesetMappings7c:
	.incbin "tileset_layouts/ages/tilesetMappings7c.bin"
tilesetMappings7d:
	.incbin "tileset_layouts/ages/tilesetMappings7d.bin"
tilesetMappings7e:
	.incbin "tileset_layouts/ages/tilesetMappings7e.bin"
tilesetMappings7f:
	.incbin "tileset_layouts/ages/tilesetMappings7f.bin"

.BANK $70 SLOT 1
.ORG 0

tilesetCollisions00:
	.incbin "tileset_layouts/ages/tilesetCollisions00.bin"
tilesetCollisions01:
	.incbin "tileset_layouts/ages/tilesetCollisions01.bin"
tilesetCollisions02:
	.incbin "tileset_layouts/ages/tilesetCollisions02.bin"
tilesetCollisions03:
	.incbin "tileset_layouts/ages/tilesetCollisions03.bin"
tilesetCollisions04:
	.incbin "tileset_layouts/ages/tilesetCollisions04.bin"
tilesetCollisions05:
	.incbin "tileset_layouts/ages/tilesetCollisions05.bin"
tilesetCollisions06:
	.incbin "tileset_layouts/ages/tilesetCollisions06.bin"
tilesetCollisions07:
	.incbin "tileset_layouts/ages/tilesetCollisions07.bin"
tilesetCollisions08:
	.incbin "tileset_layouts/ages/tilesetCollisions08.bin"
tilesetCollisions09:
	.incbin "tileset_layouts/ages/tilesetCollisions09.bin"
tilesetCollisions0a:
	.incbin "tileset_layouts/ages/tilesetCollisions0a.bin"
tilesetCollisions0b:
	.incbin "tileset_layouts/ages/tilesetCollisions0b.bin"
tilesetCollisions0c:
	.incbin "tileset_layouts/ages/tilesetCollisions0c.bin"
tilesetCollisions0d:
	.incbin "tileset_layouts/ages/tilesetCollisions0d.bin"
tilesetCollisions0e:
	.incbin "tileset_layouts/ages/tilesetCollisions0e.bin"
tilesetCollisions0f:
	.incbin "tileset_layouts/ages/tilesetCollisions0f.bin"
tilesetCollisions10:
	.incbin "tileset_layouts/ages/tilesetCollisions10.bin"
tilesetCollisions11:
	.incbin "tileset_layouts/ages/tilesetCollisions11.bin"
tilesetCollisions12:
	.incbin "tileset_layouts/ages/tilesetCollisions12.bin"
tilesetCollisions13:
	.incbin "tileset_layouts/ages/tilesetCollisions13.bin"
tilesetCollisions14:
	.incbin "tileset_layouts/ages/tilesetCollisions14.bin"
tilesetCollisions15:
	.incbin "tileset_layouts/ages/tilesetCollisions15.bin"
tilesetCollisions16:
	.incbin "tileset_layouts/ages/tilesetCollisions16.bin"
tilesetCollisions17:
	.incbin "tileset_layouts/ages/tilesetCollisions17.bin"
tilesetCollisions18:
	.incbin "tileset_layouts/ages/tilesetCollisions18.bin"
tilesetCollisions19:
	.incbin "tileset_layouts/ages/tilesetCollisions19.bin"
tilesetCollisions1a:
	.incbin "tileset_layouts/ages/tilesetCollisions1a.bin"
tilesetCollisions1b:
	.incbin "tileset_layouts/ages/tilesetCollisions1b.bin"
tilesetCollisions1c:
	.incbin "tileset_layouts/ages/tilesetCollisions1c.bin"
tilesetCollisions1d:
	.incbin "tileset_layouts/ages/tilesetCollisions1d.bin"
tilesetCollisions1e:
	.incbin "tileset_layouts/ages/tilesetCollisions1e.bin"
tilesetCollisions1f:
	.incbin "tileset_layouts/ages/tilesetCollisions1f.bin"
tilesetCollisions20:
	.incbin "tileset_layouts/ages/tilesetCollisions20.bin"
tilesetCollisions21:
	.incbin "tileset_layouts/ages/tilesetCollisions21.bin"
tilesetCollisions22:
	.incbin "tileset_layouts/ages/tilesetCollisions22.bin"
tilesetCollisions23:
	.incbin "tileset_layouts/ages/tilesetCollisions23.bin"
tilesetCollisions24:
	.incbin "tileset_layouts/ages/tilesetCollisions24.bin"
tilesetCollisions25:
	.incbin "tileset_layouts/ages/tilesetCollisions25.bin"
tilesetCollisions26:
	.incbin "tileset_layouts/ages/tilesetCollisions26.bin"
tilesetCollisions27:
	.incbin "tileset_layouts/ages/tilesetCollisions27.bin"
tilesetCollisions28:
	.incbin "tileset_layouts/ages/tilesetCollisions28.bin"
tilesetCollisions29:
	.incbin "tileset_layouts/ages/tilesetCollisions29.bin"
tilesetCollisions2a:
	.incbin "tileset_layouts/ages/tilesetCollisions2a.bin"
tilesetCollisions2b:
	.incbin "tileset_layouts/ages/tilesetCollisions2b.bin"
tilesetCollisions2c:
	.incbin "tileset_layouts/ages/tilesetCollisions2c.bin"
tilesetCollisions2d:
	.incbin "tileset_layouts/ages/tilesetCollisions2d.bin"
tilesetCollisions2e:
	.incbin "tileset_layouts/ages/tilesetCollisions2e.bin"
tilesetCollisions2f:
	.incbin "tileset_layouts/ages/tilesetCollisions2f.bin"
tilesetCollisions30:
	.incbin "tileset_layouts/ages/tilesetCollisions30.bin"
tilesetCollisions31:
	.incbin "tileset_layouts/ages/tilesetCollisions31.bin"
tilesetCollisions32:
	.incbin "tileset_layouts/ages/tilesetCollisions32.bin"
tilesetCollisions33:
	.incbin "tileset_layouts/ages/tilesetCollisions33.bin"
tilesetCollisions34:
	.incbin "tileset_layouts/ages/tilesetCollisions34.bin"
tilesetCollisions35:
	.incbin "tileset_layouts/ages/tilesetCollisions35.bin"
tilesetCollisions36:
	.incbin "tileset_layouts/ages/tilesetCollisions36.bin"
tilesetCollisions37:
	.incbin "tileset_layouts/ages/tilesetCollisions37.bin"
tilesetCollisions38:
	.incbin "tileset_layouts/ages/tilesetCollisions38.bin"
tilesetCollisions39:
	.incbin "tileset_layouts/ages/tilesetCollisions39.bin"
tilesetCollisions3a:
	.incbin "tileset_layouts/ages/tilesetCollisions3a.bin"
tilesetCollisions3b:
	.incbin "tileset_layouts/ages/tilesetCollisions3b.bin"
tilesetCollisions3c:
	.incbin "tileset_layouts/ages/tilesetCollisions3c.bin"
tilesetCollisions3d:
	.incbin "tileset_layouts/ages/tilesetCollisions3d.bin"
tilesetCollisions3e:
	.incbin "tileset_layouts/ages/tilesetCollisions3e.bin"
tilesetCollisions3f:
	.incbin "tileset_layouts/ages/tilesetCollisions3f.bin"

.BANK $71 SLOT 1
.ORG 0

tilesetCollisions40:
	.incbin "tileset_layouts/ages/tilesetCollisions40.bin"
tilesetCollisions41:
	.incbin "tileset_layouts/ages/tilesetCollisions41.bin"
tilesetCollisions42:
	.incbin "tileset_layouts/ages/tilesetCollisions42.bin"
tilesetCollisions43:
	.incbin "tileset_layouts/ages/tilesetCollisions43.bin"
tilesetCollisions44:
	.incbin "tileset_layouts/ages/tilesetCollisions44.bin"
tilesetCollisions45:
	.incbin "tileset_layouts/ages/tilesetCollisions45.bin"
tilesetCollisions46:
	.incbin "tileset_layouts/ages/tilesetCollisions46.bin"
tilesetCollisions47:
	.incbin "tileset_layouts/ages/tilesetCollisions47.bin"
tilesetCollisions48:
	.incbin "tileset_layouts/ages/tilesetCollisions48.bin"
tilesetCollisions49:
	.incbin "tileset_layouts/ages/tilesetCollisions49.bin"
tilesetCollisions4a:
	.incbin "tileset_layouts/ages/tilesetCollisions4a.bin"
tilesetCollisions4b:
	.incbin "tileset_layouts/ages/tilesetCollisions4b.bin"
tilesetCollisions4c:
	.incbin "tileset_layouts/ages/tilesetCollisions4c.bin"
tilesetCollisions4d:
	.incbin "tileset_layouts/ages/tilesetCollisions4d.bin"
tilesetCollisions4e:
	.incbin "tileset_layouts/ages/tilesetCollisions4e.bin"
tilesetCollisions4f:
	.incbin "tileset_layouts/ages/tilesetCollisions4f.bin"
tilesetCollisions50:
	.incbin "tileset_layouts/ages/tilesetCollisions50.bin"
tilesetCollisions51:
	.incbin "tileset_layouts/ages/tilesetCollisions51.bin"
tilesetCollisions52:
	.incbin "tileset_layouts/ages/tilesetCollisions52.bin"
tilesetCollisions53:
	.incbin "tileset_layouts/ages/tilesetCollisions53.bin"
tilesetCollisions54:
	.incbin "tileset_layouts/ages/tilesetCollisions54.bin"
tilesetCollisions55:
	.incbin "tileset_layouts/ages/tilesetCollisions55.bin"
tilesetCollisions56:
	.incbin "tileset_layouts/ages/tilesetCollisions56.bin"
tilesetCollisions57:
	.incbin "tileset_layouts/ages/tilesetCollisions57.bin"
tilesetCollisions58:
	.incbin "tileset_layouts/ages/tilesetCollisions58.bin"
tilesetCollisions59:
	.incbin "tileset_layouts/ages/tilesetCollisions59.bin"
tilesetCollisions5a:
	.incbin "tileset_layouts/ages/tilesetCollisions5a.bin"
tilesetCollisions5b:
	.incbin "tileset_layouts/ages/tilesetCollisions5b.bin"
tilesetCollisions5c:
	.incbin "tileset_layouts/ages/tilesetCollisions5c.bin"
tilesetCollisions5d:
	.incbin "tileset_layouts/ages/tilesetCollisions5d.bin"
tilesetCollisions5e:
	.incbin "tileset_layouts/ages/tilesetCollisions5e.bin"
tilesetCollisions5f:
	.incbin "tileset_layouts/ages/tilesetCollisions5f.bin"
tilesetCollisions60:
	.incbin "tileset_layouts/ages/tilesetCollisions60.bin"
tilesetCollisions61:
	.incbin "tileset_layouts/ages/tilesetCollisions61.bin"
tilesetCollisions62:
	.incbin "tileset_layouts/ages/tilesetCollisions62.bin"
tilesetCollisions63:
	.incbin "tileset_layouts/ages/tilesetCollisions63.bin"
tilesetCollisions64:
	.incbin "tileset_layouts/ages/tilesetCollisions64.bin"
tilesetCollisions65:
	.incbin "tileset_layouts/ages/tilesetCollisions65.bin"
tilesetCollisions66:
	.incbin "tileset_layouts/ages/tilesetCollisions66.bin"
tilesetCollisions67:
	.incbin "tileset_layouts/ages/tilesetCollisions67.bin"
tilesetCollisions68:
	.incbin "tileset_layouts/ages/tilesetCollisions68.bin"
tilesetCollisions69:
	.incbin "tileset_layouts/ages/tilesetCollisions69.bin"
tilesetCollisions6a:
	.incbin "tileset_layouts/ages/tilesetCollisions6a.bin"
tilesetCollisions6b:
	.incbin "tileset_layouts/ages/tilesetCollisions6b.bin"
tilesetCollisions6c:
	.incbin "tileset_layouts/ages/tilesetCollisions6c.bin"
tilesetCollisions6d:
	.incbin "tileset_layouts/ages/tilesetCollisions6d.bin"
tilesetCollisions6e:
	.incbin "tileset_layouts/ages/tilesetCollisions6e.bin"
tilesetCollisions6f:
	.incbin "tileset_layouts/ages/tilesetCollisions6f.bin"
tilesetCollisions70:
	.incbin "tileset_layouts/ages/tilesetCollisions70.bin"
tilesetCollisions71:
	.incbin "tileset_layouts/ages/tilesetCollisions71.bin"
tilesetCollisions72:
	.incbin "tileset_layouts/ages/tilesetCollisions72.bin"
tilesetCollisions73:
	.incbin "tileset_layouts/ages/tilesetCollisions73.bin"
tilesetCollisions74:
	.incbin "tileset_layouts/ages/tilesetCollisions74.bin"
tilesetCollisions75:
	.incbin "tileset_layouts/ages/tilesetCollisions75.bin"
tilesetCollisions76:
	.incbin "tileset_layouts/ages/tilesetCollisions76.bin"
tilesetCollisions77:
	.incbin "tileset_layouts/ages/tilesetCollisions77.bin"
tilesetCollisions78:
	.incbin "tileset_layouts/ages/tilesetCollisions78.bin"
tilesetCollisions79:
	.incbin "tileset_layouts/ages/tilesetCollisions79.bin"
tilesetCollisions7a:
	.incbin "tileset_layouts/ages/tilesetCollisions7a.bin"
tilesetCollisions7b:
	.incbin "tileset_layouts/ages/tilesetCollisions7b.bin"
tilesetCollisions7c:
	.incbin "tileset_layouts/ages/tilesetCollisions7c.bin"
tilesetCollisions7d:
	.incbin "tileset_layouts/ages/tilesetCollisions7d.bin"
tilesetCollisions7e:
	.incbin "tileset_layouts/ages/tilesetCollisions7e.bin"
tilesetCollisions7f:
	.incbin "tileset_layouts/ages/tilesetCollisions7f.bin"
