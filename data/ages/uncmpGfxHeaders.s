uncmpGfxHeaderTable:
	.dw uncmpGfxHeader00
	.dw uncmpGfxHeader01
	.dw uncmpGfxHeader02
	.dw uncmpGfxHeader03
	.dw uncmpGfxHeader04
	.dw uncmpGfxHeader05
	.dw uncmpGfxHeader06
	.dw uncmpGfxHeader07
	.dw uncmpGfxHeader08
	.dw uncmpGfxHeader09
	.dw uncmpGfxHeader0a
	.dw uncmpGfxHeader0b
	.dw uncmpGfxHeader0c
	.dw uncmpGfxHeader0d
	.dw uncmpGfxHeader0e
	.dw uncmpGfxHeader0f
	.dw uncmpGfxHeader10
	.dw uncmpGfxHeader11
	.dw uncmpGfxHeader12
	.dw uncmpGfxHeader13
	.dw uncmpGfxHeader14
	.dw uncmpGfxHeader15
	.dw uncmpGfxHeader16
	.dw uncmpGfxHeader17
	.dw uncmpGfxHeader18
	.dw uncmpGfxHeader19
	.dw uncmpGfxHeader1a
	.dw uncmpGfxHeader1b
	.dw uncmpGfxHeader1c
	.dw uncmpGfxHeader1d
	.dw uncmpGfxHeader1e
	.dw uncmpGfxHeader1f
	.dw uncmpGfxHeader20
	.dw uncmpGfxHeader21
	.dw uncmpGfxHeader22
	.dw uncmpGfxHeader23
	.dw uncmpGfxHeader24
	.dw uncmpGfxHeader25
	.dw uncmpGfxHeader26
	.dw uncmpGfxHeader27
	.dw uncmpGfxHeader28
	.dw uncmpGfxHeader29
	.dw uncmpGfxHeader2a
	.dw uncmpGfxHeader2b
	.dw uncmpGfxHeader2c
	.dw uncmpGfxHeader2d
	.dw uncmpGfxHeader2e
	.dw uncmpGfxHeader2f
	.dw uncmpGfxHeader30
	.dw uncmpGfxHeader31
	.dw uncmpGfxHeader32
	.dw uncmpGfxHeader33
	.dw uncmpGfxHeader34
	.dw uncmpGfxHeader35
	.dw uncmpGfxHeader36
	.dw uncmpGfxHeader37
	.dw uncmpGfxHeader38
	.dw uncmpGfxHeader39
	.dw uncmpGfxHeader3a
	.dw uncmpGfxHeader3b
	.dw uncmpGfxHeader3c
	.dw uncmpGfxHeader3d
	.dw uncmpGfxHeader3e
	.dw uncmpGfxHeader3f



uncmpGfxHeader00:
uncmpGfxHeader01:
	m_GfxHeaderRam w4TileMap, $8601, $1f
uncmpGfxHeader02:
	m_GfxHeaderRam w4ItemIconGfx, $8781, $07|$80
uncmpGfxHeader03:
	m_GfxHeaderRam w4StatusBarAttributeMap, $9fc1, $03|$80
	m_GfxHeaderRam w4StatusBarTileMap,      $9fc0, $03
uncmpGfxHeader04:
	m_GfxHeaderRam w4AttributeMap+$40, $9801, $19|$80
	m_GfxHeaderRam w4TileMap+$40,      $9800, $19
uncmpGfxHeader05:
	m_GfxHeaderRam w4AttributeMap+$40, $9c01, $19|$80
	m_GfxHeaderRam w4TileMap+$40,      $9c00, $19
uncmpGfxHeader06:
	m_GfxHeaderRam w4AttributeMap+$40, $9801, $1f|$80
	m_GfxHeaderRam w4TileMap+$40,      $9800, $1f
uncmpGfxHeader07:
	m_GfxHeaderRam w4GfxBuf1, $8c01, $2f
uncmpGfxHeader08:
	m_GfxHeaderRam w4TileMap,      $9c00, $23|$80
	m_GfxHeaderRam w4AttributeMap, $9c01, $23
uncmpGfxHeader09:
	m_GfxHeaderRam w4TileMap, $8000, $5f
uncmpGfxHeader0a:
	m_GfxHeaderRam w4TileMap,      $9800, $2b|$80
	m_GfxHeaderRam w4AttributeMap, $9801, $2b
uncmpGfxHeader0b:
	m_GfxHeaderRam w5NameEntryCharacterGfx, $8800, $7f
uncmpGfxHeader0c:
	m_GfxHeaderRam w5NameEntryCharacterGfx, $8601, $1f
uncmpGfxHeader0d:
	m_GfxHeaderRam w4TileMap+$140,      $9ea0, $15|$80
	m_GfxHeaderRam w4AttributeMap+$140, $9ea1, $15
uncmpGfxHeader0e:
	m_GfxHeaderRam w3TileMappingIndices, $9801, $2b|$80
	m_GfxHeaderRam w3VramTiles,          $9800, $2b
uncmpGfxHeader0f:
	m_GfxHeaderRam w3VramTiles,          $9800, $1f|$80
	m_GfxHeaderRam w3TileMappingIndices, $9801, $1f
uncmpGfxHeader10:
	m_GfxHeaderRam w3TileMappingIndices, $9801, $2b|$80
	m_GfxHeaderRam w3VramTiles,          $9800, $2b
uncmpGfxHeader11:
	m_GfxHeaderRam w3TileMappingIndices+$60, $9861, $01|$80
	m_GfxHeaderRam w3VramTiles+$60,          $9860, $01
uncmpGfxHeader12:
	m_GfxHeaderRam w4AttributeMap, $9801, $23|$80
	m_GfxHeaderRam w4TileMap,      $9800, $23
uncmpGfxHeader13:
	m_GfxHeaderRam w4AttributeMap+$000, $9801, $1f|$80
	m_GfxHeaderRam w4TileMap+$000,      $9800, $1f|$80
	m_GfxHeaderRam w4AttributeMap+$200, $9bc1, $03|$80
	m_GfxHeaderRam w4TileMap+$200,      $9bc0, $03
uncmpGfxHeader14:
	m_GfxHeaderRam w4AttributeMap, $9c01, $23|$80
	m_GfxHeaderRam w4TileMap,      $9c00, $23
uncmpGfxHeader15:
	m_GfxHeaderRam w4AttributeMap+$000, $9c01, $0f|$80
	m_GfxHeaderRam w4TileMap+$000,      $9c00, $0f|$80
	m_GfxHeaderRam w4TileMap+$100,      $9900, $01|$80
	m_GfxHeaderRam w4AttributeMap+$200, $9bc1, $03|$80
	m_GfxHeaderRam w4TileMap+$200,      $9bc0, $03
uncmpGfxHeader16:
	m_GfxHeaderRam w4StatusBarTileMap,      $9dc0, $09|$80
	m_GfxHeaderRam w4StatusBarAttributeMap, $9dc1, $09
uncmpGfxHeader17:
	m_GfxHeaderRam w7TextGfxBuffer, $9201, $1f
uncmpGfxHeader18:
	m_GfxHeader spr_boomerang, $84e1, $03
uncmpGfxHeader19:
uncmpGfxHeader1a:
	m_GfxHeader spr_swords, $8521, $09
uncmpGfxHeader1b:
	m_GfxHeader spr_swords, $8521, $0d, $a0
uncmpGfxHeader1c:
	m_GfxHeader spr_cane_of_somaria, $8521, $09
uncmpGfxHeader1d:
	m_GfxHeader spr_seed_shooter, $8521, $09
uncmpGfxHeader1e:
uncmpGfxHeader1f:
	m_GfxHeader spr_switch_hook, $8521, $0b
uncmpGfxHeader20:
	m_GfxHeaderRam w7d800+$000, $9200, $0f
uncmpGfxHeader21:
	m_GfxHeaderRam w7d800+$100, $9200, $0f
uncmpGfxHeader22:
	m_GfxHeaderRam w7d800+$200, $9240, $0a
uncmpGfxHeader23:
	m_GfxHeaderRam w7d800+$2b0, $9240, $09
uncmpGfxHeader24:
	m_GfxHeaderRam w7d800+$350, $9240, $05
uncmpGfxHeader25:
	m_GfxHeaderRam w7d800+$3b0, $9240, $03
uncmpGfxHeader26:
	m_GfxHeaderRam w7d800+$3f0, $9240, $03
uncmpGfxHeader27:
uncmpGfxHeader28:
	m_GfxHeaderRam w7d800+$430, $9240, $01
uncmpGfxHeader29:
	m_GfxHeaderRam w7d800+$450, $9200, $03
uncmpGfxHeader2a:
	m_GfxHeaderRam w4TileMap,      $9d60, $15|$80
	m_GfxHeaderRam w4AttributeMap, $9d61, $15
uncmpGfxHeader2b:
	m_GfxHeaderRam w7d800,               $8c01, $2f|$80
	m_GfxHeaderRam w3VramTiles,          $9800, $2b|$80
	m_GfxHeaderRam w3TileMappingIndices, $9801, $2b
uncmpGfxHeader2c:
	m_GfxHeaderRam w4TileMap,      $9800, $0b|$80
	m_GfxHeaderRam w4AttributeMap, $9801, $0b
uncmpGfxHeader2d:
	m_GfxHeaderRam w3VramTiles,          $9840, $1f|$80
	m_GfxHeaderRam w3TileMappingIndices, $9841, $1f
uncmpGfxHeader2e:
uncmpGfxHeader2f:
uncmpGfxHeader30:
	m_GfxHeaderRam w6AttributeBuffer, $9801, $1f|$80
	m_GfxHeaderRam w6TileBuffer,      $9800, $1f
uncmpGfxHeader31:
	m_GfxHeaderRam w3VramTiles,          $9860, $1f|$80
	m_GfxHeaderRam w3TileMappingIndices, $9861, $1f
uncmpGfxHeader32:
	m_GfxHeaderRam w2TmpGfxBuffer, $8200, $1f
uncmpGfxHeader33:
	m_GfxHeaderRam w2TmpGfxBuffer, $8400, $1f
uncmpGfxHeader34:
	m_GfxHeaderRam w4TileMap,      $9b00, $0f|$80
	m_GfxHeaderRam w4AttributeMap, $9b01, $0f
uncmpGfxHeader35:
	m_GfxHeaderRam w7d800, $8300, $2f
uncmpGfxHeader36:
	m_GfxHeaderRam w4TileMap,      $9c00, $11|$80
	m_GfxHeaderRam w4AttributeMap, $9c01, $11
uncmpGfxHeader37:
	m_GfxHeader gfx_past_chest, $8a91, $02|$80
	m_GfxHeader gfx_past_sign,  $8dc1, $03
uncmpGfxHeader38:
	m_GfxHeaderRam w3VramTiles,          $9c00, $09|$80
	m_GfxHeaderRam w3TileMappingIndices, $9c01, $09
uncmpGfxHeader39:
uncmpGfxHeader3a:
	m_GfxHeader spr_impa_fainted, $8601, $03
uncmpGfxHeader3b:
	m_GfxHeader spr_raft, $8601, $07
uncmpGfxHeader3c:
	m_GfxHeaderRam w3VramTiles, $9800, $0b
uncmpGfxHeader3d:
	m_GfxHeader gfx_animations_2, $8cc1, $03, $740
uncmpGfxHeader3e:
	m_GfxHeader gfx_animations_2, $8cc1, $03, $780
uncmpGfxHeader3f:
	m_GfxHeader gfx_animations_2, $8cc1, $03, $7c0
