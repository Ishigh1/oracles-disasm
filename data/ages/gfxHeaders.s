; A "gfx header" is a mapping of one or more graphics or map files to VRAM (or sometimes to WRAM).
; This provides a convenient interface to load a list of graphics and mapping data with a single
; function call, as in this example:
;
;    ld a,GFXH_TITLESCREEN
;    call loadGfxHeader
;
; There are 3 main types of graphics files which gfx headers can load:
;
; - gfx data (png files, "gfx_..." or "spr_...")
; - Tile mapping data (bin files, "map_...")
; - Flag/attribute data (bin files, "flg_..."), usually paired with a "map" file
;
; (Other, miscellaneous types of data are prefixed with "oth_".)
;
; Together these 3 data types contain all the data needed to draw tiles to the gameboy screen,
; except for palette data. Sprites are a bit more complicated, but the tiles used by them can be
; loaded through gfx headers.
;
; There is no technical distinction between how the 3 data types are loaded (aside from png
; conversion to binary in the makefile), but almost all graphical files fall into one of these
; categories. Typically this data is loaded directly into VRAM, but sometimes it can be loaded into
; WRAM instead for further processing.
;
; If this doesn't make sense, you should read some technical documentation on the gameboy's
; graphical hardware (ie. gameboy pandocs).

.define NUM_GFX_HEADERS $bb

gfxHeaderTable:
	.repeat NUM_GFX_HEADERS index COUNT
		.dw gfxHeader{%.2x{COUNT}}
	.endr


m_GfxHeaderStart $00, GFXH_DMG_SCREEN
	m_GfxHeader gfx_dmg_text, $8800, $2f
	m_GfxHeader gfx_dmg_gametitle, $9000, $3d
	m_GfxHeader map_dmg_message, $9800, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $01, GFXH_NINTENDO_CAPCOM_SCREEN
	m_GfxHeader flg_capcom_nintendo, $9881, $13
	m_GfxHeader map_capcom_nintendo, $9880, $13
	m_GfxHeader gfx_capcom_nintendo, $8800, $4f
	m_GfxHeaderEnd

m_GfxHeaderStart $02, GFXH_TITLESCREEN
	m_GfxHeader spr_titlescreen_sprites, $8380, $3d
	m_GfxHeader gfx_titlescreen_1, $8800, $4f
	m_GfxHeader gfx_titlescreen_2, $8d00, $5f
	m_GfxHeader gfx_titlescreen_3, $9300, $0f
	m_GfxHeader gfx_titlescreen_4, $9400, $3f
	m_GfxHeader gfx_titlescreen_5, $8801, $4f
	m_GfxHeader gfx_titlescreen_6, $8cd1, $05
	m_GfxHeader map_titlescreen, $9800, $23
	m_GfxHeader flg_titlescreen, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $03, GFXH_DONE
	m_GfxHeader gfx_done, $8801, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $04, GFXH_JAPANESE_INTRO_SCREEN
	; This used to be the data for the japanese intro graphics, but now it points to
	; gfx_capcom_nintendo with the wrong compression mode. Who knows what would happen if you
	; tried to load it.
	m_GfxHeaderForceMode gfx_capcom_nintendo, $9801, $7f|$80, $00
	m_GfxHeaderForceMode gfx_capcom_nintendo, $9800, $7f|$80, $00
	m_GfxHeaderForceMode gfx_capcom_nintendo, $8800, $7f|$80, $00
	m_GfxHeaderForceMode gfx_capcom_nintendo, $9000, $7f|$80, $00

m_GfxHeaderStart $05, GFXH_SECRET_LIST_MENU
	m_GfxHeader spr_minimap_icons, $8000, $1f
	m_GfxHeader gfx_secret_list_menu, $8700, $2f
	m_GfxHeader map_secret_list_menu, $9c00, $3f
	m_GfxHeader flg_secret_list_menu, $9c01, $3f
	m_GfxHeaderEnd

m_GfxHeaderStart $06, GFXH_HEROS_SECRET_TEXT
	m_GfxHeader gfx_herossecret, $8801, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $07, GFXH_ERROR_TEXT
	m_GfxHeader gfx_error, $8801, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $08, GFXH_INVENTORY_SCREEN
	m_GfxHeader gfx_inventory_hud_1, $8000, $2f
	m_GfxHeader spr_present_past_symbols, $8300, $0f
	m_GfxHeader spr_quest_items_5, $8400, $1f
	m_GfxHeader spr_map_compass_keys_bookofseals, $8600, $1f
	m_GfxHeader gfx_save, $8600, $07
	m_GfxHeader gfx_blank, $8800, $1f
	m_GfxHeader gfx_rings, $8a00, $3f
	m_GfxHeader gfx_inventory_hud_2, $8e00, $1f
	m_GfxHeader spr_item_icons_1_spr, $8001, $1f
	m_GfxHeader spr_item_icons_2, $8201, $1f
	m_GfxHeader spr_item_icons_3, $8401, $1f
	m_GfxHeader spr_essences, $8601, $17
	m_GfxHeader spr_quest_items_1, $8801, $1f
	m_GfxHeader spr_quest_items_2, $8a01, $1f
	m_GfxHeader spr_quest_items_3, $8c01, $1f
	m_GfxHeader spr_quest_items_4, $8e01, $1f
	m_GfxHeader map_inventory_textbar, $d1e4, $05
	m_GfxHeader flg_inventory_textbar, $d5e4, $05
	; Fall through
m_GfxHeaderStart $09, GFXH_INVENTORY_SUBSCREEN_1
	m_GfxHeader map_inventory_screen_1, $d044, $19
	m_GfxHeader flg_inventory_screen_1, $d444, $19
	m_GfxHeaderEnd

m_GfxHeaderStart $0a, GFXH_INVENTORY_SUBSCREEN_2
	m_GfxHeader map_inventory_screen_2, $d064, $17
	m_GfxHeader flg_inventory_screen_2, $d464, $17
	m_GfxHeaderEnd

m_GfxHeaderStart $0b, GFXH_INVENTORY_SUBSCREEN_3
	m_GfxHeader map_inventory_screen_3, $d044, $19
	m_GfxHeader flg_inventory_screen_3, $d444, $19
	m_GfxHeaderEnd

m_GfxHeaderStart $0c, GFXH_NAYRU_SINGING_CUTSCENE
	m_GfxHeader spr_nayru_singing_cutscene, $8000, $4d
	m_GfxHeader gfx_nayru_singing_cutscene_1, $8800, $7f
	m_GfxHeader gfx_nayru_singing_cutscene_2, $9000, $7f
	m_GfxHeader gfx_nayru_singing_cutscene_3, $8801, $31
	m_GfxHeader map_nayru_singing_cutscene, $9800, $23
	m_GfxHeader flg_nayru_singing_cutscene, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $0d, GFXH_OVERWORLD_MAP
	m_GfxHeader gfx_minimap_tiles_present_1,  $8801,           $6f
	m_GfxHeader gfx_minimap_tiles_common,     $9001,           $5f
	m_GfxHeader gfx_minimap_tiles_present_2,  $9601,           $1f
	m_GfxHeader spr_minimap_icons,            $8000,           $6b
	m_GfxHeader gfx_minimap_tiles_dungeon,    $8800,           $3f
	m_GfxHeader map_present_minimap,   w4TileMap,       $23
	m_GfxHeader flg_present_minimap,   w4AttributeMap,  $23
	m_GfxHeaderEnd

m_GfxHeaderStart $0e, GFXH_PAST_MAP
	m_GfxHeader gfx_minimap_tiles_past_1,   $8801,           $5f
	m_GfxHeader gfx_minimap_tiles_common,   $9001,           $5f
	m_GfxHeader gfx_minimap_tiles_past_2,   $9601,           $1f
	m_GfxHeader spr_minimap_icons,          $8000,           $6b
	m_GfxHeader gfx_minimap_tiles_dungeon,  $8800,           $3f
	m_GfxHeader map_past_minimap,    w4TileMap,       $23
	m_GfxHeader flg_past_minimap,    w4AttributeMap,  $23
	m_GfxHeaderEnd

m_GfxHeaderStart $0f, GFXH_DUNGEON_MAP
	m_GfxHeader spr_map_compass_keys_bookofseals,  $8000,           $1f
	m_GfxHeader gfx_minimap_tiles_dungeon,         $8800,           $3f
	m_GfxHeader map_dungeon_minimap,        w4TileMap,       $23
	m_GfxHeader flg_dungeon_minimap,        w4AttributeMap,  $23
	m_GfxHeaderEnd

m_GfxHeaderStart $10, GFXH_DUNGEON_0_BLURB
	m_GfxHeader gfx_blurb_makupath, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $11, GFXH_DUNGEON_1_BLURB
	m_GfxHeader gfx_blurb_d1, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $12, GFXH_DUNGEON_2_BLURB
	m_GfxHeader gfx_blurb_d2, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $13, GFXH_DUNGEON_3_BLURB
	m_GfxHeader gfx_blurb_d3, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $14, GFXH_DUNGEON_4_BLURB
	m_GfxHeader gfx_blurb_d4, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $15, GFXH_DUNGEON_5_BLURB
	m_GfxHeader gfx_blurb_d5, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $16, GFXH_DUNGEON_6_BLURB
	m_GfxHeader gfx_blurb_d6, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $17, GFXH_DUNGEON_7_BLURB
	m_GfxHeader gfx_blurb_d7, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $18, GFXH_DUNGEON_8_BLURB
	m_GfxHeader gfx_blurb_d8, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $19, GFXH_DUNGEON_9_BLURB
	m_GfxHeader gfx_blurb_blacktowerturret, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $1a, GFXH_DUNGEON_A_BLURB
	m_GfxHeader gfx_blurb_roomofrites, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $1b, GFXH_DUNGEON_B_BLURB
	m_GfxHeader gfx_blurb_heroscave, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $1c, GFXH_DUNGEON_C_BLURB
	m_GfxHeader gfx_blurb_d6, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $1d, GFXH_DUNGEON_D_BLURB
	m_GfxHeader gfx_blurb_makupath, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $1e, GFXH_DUNGEON_E_BLURB
	m_GfxHeader gfx_blurb_makupath, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $1f, GFXH_DUNGEON_F_BLURB
	m_GfxHeader gfx_blurb_makupath, $8c00, $27
	m_GfxHeaderEnd

m_GfxHeaderStart $20, GFXH_HUD
	m_GfxHeader gfx_hud, $9000, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $21, GFXH_HUD_LAYOUT_NORMAL
	m_GfxHeader map_hud_normal, w4StatusBarTileMap,      $03
	m_GfxHeader flg_hud_normal, w4StatusBarAttributeMap, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $22, GFXH_HUD_LAYOUT_EXTRA_HEARTS
	m_GfxHeader map_hud_extra_hearts, w4StatusBarTileMap,      $03
	m_GfxHeader flg_hud_extra_hearts, w4StatusBarAttributeMap, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $23, GFXH_HUD_LAYOUT_BIGGORON_SWORD
	m_GfxHeader map_hud_biggoron_sword, $d244, $03
	m_GfxHeader flg_hud_biggoron_sword, $d644, $03
	m_GfxHeader spr_biggoron_sword_icon, $d684, $07
	m_GfxHeaderEnd

m_GfxHeaderStart $24, GFXH_24
m_GfxHeaderStart $25, GFXH_25
m_GfxHeaderStart $26, GFXH_26
m_GfxHeaderStart $27, GFXH_27
m_GfxHeaderStart $28, GFXH_28
m_GfxHeaderStart $29, GFXH_29
m_GfxHeaderStart $2a, GFXH_2a

m_GfxHeaderStart $2b, GFXH_LINK_WITH_ORACLE_END_SCENE
	m_GfxHeader spr_link_with_oracle, $8000, $53
	m_GfxHeader gfx_link_with_oracle_1, $8800, $7f
	m_GfxHeader gfx_link_with_oracle_2, $8801, $7f
	m_GfxHeader gfx_link_with_oracle_3, $9001, $31
	m_GfxHeader map_link_with_oracle, $9800, $23
	m_GfxHeader flg_link_with_oracle, $9801, $23
	m_GfxHeader map_link_with_oracle, $d803, $23
	m_GfxHeader flg_link_with_oracle, $dc03, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $2c, GFXH_LINK_WITH_ORACLE_AND_TWINROVA_END_SCENE
	m_GfxHeader spr_link_with_oracle_and_twinrova, $8000, $49
	m_GfxHeader gfx_link_with_oracle_and_twinrova_1, $8800, $39
	m_GfxHeader gfx_link_with_oracle_and_twinrova_2, $8801, $7f
	m_GfxHeader gfx_link_with_oracle_and_twinrova_3, $9001, $7f
	m_GfxHeader map_link_with_oracle_and_twinrova_1, $9800, $23
	m_GfxHeader flg_link_with_oracle_and_twinrova_1, $9801, $23
	m_GfxHeader map_link_with_oracle_and_twinrova_1, $d803, $23
	m_GfxHeader flg_link_with_oracle_and_twinrova_1, $dc03, $23
	m_GfxHeader map_link_with_oracle_and_twinrova_2, $d004, $23
	m_GfxHeader flg_link_with_oracle_and_twinrova_2, $d404, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $2d, GFXH_TWINROVA_CLOSEUP
	m_GfxHeader gfx_twinrova_closeup_1, $8800, $7f
	m_GfxHeader gfx_twinrova_closeup_2, $9000, $34
	m_GfxHeader gfx_credits_gametitle, $8801, $69
	m_GfxHeader map_twinrova_closeup, $9800, $23
	m_GfxHeader flg_twinrova_closeup, $9801, $23
	m_GfxHeader map_credits_gametitle, $9c40, $1b
	m_GfxHeader flg_credits_gametitle, $9c41, $1b
	m_GfxHeaderEnd

m_GfxHeaderStart $2e, GFXH_BLACK_TOWER_MIDDLE
	m_GfxHeader map_black_tower_middle, $99e0, $15
	m_GfxHeader flg_black_tower_middle, $99e1, $15
	m_GfxHeader map_black_tower_middle, $d823, $15
	m_GfxHeader flg_black_tower_middle, $dc23, $15
	; Fall through
m_GfxHeaderStart $2f, GFXH_BLACK_TOWER_BASE
	m_GfxHeader map_black_tower_base, $9b40, $0b
	m_GfxHeader flg_black_tower_base, $9b41, $0b
	m_GfxHeader map_black_tower_base, $d983, $0b
	m_GfxHeader flg_black_tower_base, $dd83, $0b
	m_GfxHeader spr_black_tower_scene, $8001, $4b
	m_GfxHeader gfx_black_tower_scene_1, $8800, $7f
	m_GfxHeader gfx_black_tower_scene_2, $9000, $3f
	m_GfxHeader gfx_black_tower_scene_3, $8801, $7f
	m_GfxHeader gfx_black_tower_scene_4, $9001, $6f
	m_GfxHeaderEnd

; Next 10 gfx headers are only used in seasons, but still exist in ages
m_GfxHeaderStart $30, GFXH_INTRO_LINK_MID_FRAME_1
	m_GfxHeader spr_intro_link_mid_frame_1, $d005, $0b
	m_GfxHeaderEnd

m_GfxHeaderStart $31, GFXH_INTRO_LINK_MID_FRAME_2
	m_GfxHeader spr_intro_link_mid_frame_2, $d005, $0b
	m_GfxHeaderEnd

m_GfxHeaderStart $32, GFXH_INTRO_LINK_MID_FRAME_3
	m_GfxHeader spr_intro_link_mid_frame_3, $d005, $0b
	m_GfxHeaderEnd

m_GfxHeaderStart $33, GFXH_INTRO_LINK_MID_FRAME_4
	m_GfxHeader spr_intro_link_mid_frame_4, $d005, $0b
	m_GfxHeaderEnd

m_GfxHeaderStart $34, GFXH_INTRO_LINK_MID_FRAME_5
	m_GfxHeader spr_intro_link_mid_frame_5, $d005, $0b
	m_GfxHeaderEnd

m_GfxHeaderStart $35, GFXH_INTRO_LINK_CLOSE_FRAME_1
	m_GfxHeader spr_intro_link_close_frame_1, $d005, $1b
	m_GfxHeaderEnd

m_GfxHeaderStart $36, GFXH_INTRO_LINK_CLOSE_FRAME_2
	m_GfxHeader spr_intro_link_close_frame_2, $d005, $1d
	m_GfxHeaderEnd

m_GfxHeaderStart $37, GFXH_INTRO_LINK_CLOSE_FRAME_3
	m_GfxHeader spr_intro_link_close_frame_3, $d005, $1d
	m_GfxHeaderEnd

m_GfxHeaderStart $38, GFXH_INTRO_LINK_CLOSE_FRAME_4
	m_GfxHeader spr_intro_link_close_frame_4, $d005, $19
	m_GfxHeaderEnd

m_GfxHeaderStart $39, GFXH_INTRO_LINK_CLOSE_FRAME_5
	m_GfxHeader spr_intro_link_close_frame_5, $d005, $17
	m_GfxHeaderEnd

m_GfxHeaderStart $3a, GFXH_UNAPPRAISED_RING_LIST
	m_GfxHeader map_unappraised_ring_list, $d004, $1f
	m_GfxHeader flg_unappraised_ring_list, $d404, $1f
	m_GfxHeader gfx_inventory_hud_1, $8000, $2f
	m_GfxHeader gfx_rings, $8a00, $3f
	m_GfxHeader gfx_inventory_hud_2, $8e00, $1f
	m_GfxHeader gfx_hud, $9000, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $3b, GFXH_APPRAISED_RING_LIST
	m_GfxHeader map_appraised_ring_list, $d004, $23
	m_GfxHeader flg_appraised_ring_list, $d404, $23
	m_GfxHeader gfx_inventory_hud_1, $8000, $2f
	m_GfxHeader spr_quest_items_5, $8400, $1f
	m_GfxHeader gfx_rings, $8a00, $3f
	m_GfxHeader gfx_inventory_hud_2, $8e00, $1f
	m_GfxHeader gfx_inventory_hud_1, $9000, $2f
	m_GfxHeaderEnd

m_GfxHeaderStart $3c, GFXH_SCENE_CREDITS_MAKUTREE
	m_GfxHeader spr_credits_makutree, $8000, $3b
	m_GfxHeader gfx_credits_makutree_1, $8800, $7f
	m_GfxHeader gfx_credits_makutree_2, $9000, $7f
	m_GfxHeader gfx_credits_gametitle, $8801, $69
	m_GfxHeader map_credits_makutree, $9800, $23
	m_GfxHeader flg_credits_makutree, $9801, $23
	m_GfxHeader map_credits_gametitle, $9c40, $1b
	m_GfxHeader flg_credits_gametitle, $9c41, $1b
	m_GfxHeaderEnd

m_GfxHeaderStart $3d, GFXH_GASHA_TREE_DISAPPEARED
	m_GfxHeader gfx_gasha_tree, $d807, $44
	m_GfxHeader spr_grass_tuft, $dc57, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $3e, GFXH_GASHA_TREE_DISAPPEARED_SAND
	m_GfxHeader gfx_sand, $dc57, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $3f, GFXH_GASHA_TREE_DISAPPEARED_DIRT
	m_GfxHeader gfx_dirt, $dc57, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $40, GFXH_TILESET_OVERWORLD_PRESENT
	m_GfxHeader gfx_tileset_overworld_standard, $8801, $5f
	m_GfxHeader gfx_tileset_overworld_present, $8e01, $4f
	m_GfxHeader gfx_tileset_lynna_city_1, $9301, $1f
	m_GfxHeader gfx_tileset_lynna_city_2, $9501, $1f
	m_GfxHeader gfx_tileset_lynna_city_3, $9701, $0f
	m_GfxHeaderEnd

m_GfxHeaderStart $41, GFXH_TILESET_OVERWORLD_PAST
	m_GfxHeader gfx_tileset_overworld_standard, $8801, $5f
	m_GfxHeader gfx_tileset_overworld_past, $8e01, $4f
	m_GfxHeader gfx_tileset_lynna_city_1, $9301, $1f
	m_GfxHeader gfx_tileset_lynna_city_2, $9501, $1f
	m_GfxHeader gfx_tileset_lynna_city_3, $9701, $0f
	m_GfxHeaderEnd

m_GfxHeaderStart $42, GFXH_TILESET_UNDERWATER_PRESENT
	m_GfxHeader gfx_tileset_overworld_standard, $8801, $5f
	m_GfxHeader gfx_tileset_underwater_present, $8e01, $4f
	m_GfxHeader gfx_tileset_underwater_common_1, $9301, $1f
	m_GfxHeader gfx_tileset_underwater_common_2, $9501, $1f
	m_GfxHeader gfx_tileset_underwater_common_3, $9701, $0f
	m_GfxHeaderEnd

m_GfxHeaderStart $43, GFXH_TILESET_UNDERWATER_PAST
	m_GfxHeader gfx_tileset_overworld_standard, $8801, $5f
	m_GfxHeader gfx_tileset_underwater_past, $8e01, $4f
	m_GfxHeader gfx_tileset_underwater_common_1, $9301, $1f
	m_GfxHeader gfx_tileset_underwater_common_2, $9501, $1f
	m_GfxHeader gfx_tileset_underwater_common_3, $9701, $0f
	m_GfxHeaderEnd

m_GfxHeaderStart $44, GFXH_SEAWEED_CUT
	m_GfxHeader spr_seaweed_cut, $8001, $01
	m_GfxHeaderEnd

m_GfxHeaderStart $45, GFXH_45
m_GfxHeaderStart $46, GFXH_46
m_GfxHeaderStart $47, GFXH_47
m_GfxHeaderStart $48, GFXH_48
m_GfxHeaderStart $49, GFXH_49
m_GfxHeaderStart $4a, GFXH_4a
m_GfxHeaderStart $4b, GFXH_4b
m_GfxHeaderStart $4c, GFXH_4c
m_GfxHeaderStart $4d, GFXH_4d
m_GfxHeaderStart $4e, GFXH_4e
m_GfxHeaderStart $4f, GFXH_4f

m_GfxHeaderStart $50, GFXH_WING_DUNGEON_COLLAPSING_1
	m_GfxHeader map_wing_dungeon_collapsing_1, $d002, $0b
	m_GfxHeaderEnd

m_GfxHeaderStart $51, GFXH_WING_DUNGEON_COLLAPSING_2
	m_GfxHeader map_wing_dungeon_collapsing_2, $d002, $0b
	m_GfxHeaderEnd

m_GfxHeaderStart $52, GFXH_WING_DUNGEON_COLLAPSING_3
	m_GfxHeader map_wing_dungeon_collapsing_3, $d002, $0b
	m_GfxHeaderEnd

m_GfxHeaderStart $53, GFXH_WING_DUNGEON_COLLAPSED
	m_GfxHeader map_wing_dungeon_collapsed, $d002, $0b
	m_GfxHeaderEnd

m_GfxHeaderStart $54, GFXH_54
m_GfxHeaderStart $55, GFXH_55
m_GfxHeaderStart $56, GFXH_56
m_GfxHeaderStart $57, GFXH_57
m_GfxHeaderStart $58, GFXH_58
m_GfxHeaderStart $59, GFXH_59
m_GfxHeaderStart $5a, GFXH_5a
m_GfxHeaderStart $5b, GFXH_5b
m_GfxHeaderStart $5c, GFXH_5c
m_GfxHeaderStart $5d, GFXH_5d
m_GfxHeaderStart $5e, GFXH_5e
m_GfxHeaderStart $5f, GFXH_5f

m_GfxHeaderStart $60, GFXH_TILESET_MAKU_PATH
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_maku_path, $9401, $3f
	m_GfxHeaderEnd

m_GfxHeaderStart $61, GFXH_TILESET_SPIRITS_GRAVE
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_spirits_grave, $9401, $25
	m_GfxHeaderEnd

m_GfxHeaderStart $62, GFXH_TILESET_WING_DUNGEON
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_wing_dungeon, $9401, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $63, GFXH_TILESET_MOONLIT_GROTTO
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_moonlit_grotto, $9401, $21
	m_GfxHeaderEnd

m_GfxHeaderStart $64, GFXH_TILESET_SKULL_DUNGEON
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_skull_dungeon, $9401, $29
	m_GfxHeaderEnd

m_GfxHeaderStart $65, GFXH_TILESET_CROWN_DUNGEON
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_crown_dungeon, $9401, $26
	m_GfxHeaderEnd

m_GfxHeaderStart $66, GFXH_TILESET_MERMAIDS_CAVE
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_mermaids_cave, $9401, $2f
	m_GfxHeaderEnd

m_GfxHeaderStart $67, GFXH_TILESET_JABU_JABUS_BELLY
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_jabu_jabus_belly, $9401, $32
	m_GfxHeaderEnd

m_GfxHeaderStart $68, GFXH_TILESET_ANCIENT_TOMB
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_ancient_tomb, $9401, $3f
	m_GfxHeader gfx_tileset_minecart_track, $90c1, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $69, GFXH_TILESET_BLACK_TOWER_TOP
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_black_tower_top, $9401, $3f
	m_GfxHeaderEnd

m_GfxHeaderStart $6a, GFXH_TILESET_ROOM_OF_RITES
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_room_of_rites, $9401, $3f
	m_GfxHeaderEnd

m_GfxHeaderStart $6b, GFXH_6b
m_GfxHeaderStart $6c, GFXH_6c

m_GfxHeaderStart $6d, GFXH_TILESET_SIDESCROLL
	m_GfxHeader gfx_tileset_sidescroll_1, $8801, $7f
	m_GfxHeader gfx_tileset_sidescroll_2, $9001, $7f
	m_GfxHeaderEnd

m_GfxHeaderStart $6e, GFXH_TILESET_BLACK_TOWER
	m_GfxHeader gfx_tileset_black_tower, $8801, $6f
	m_GfxHeaderEnd

m_GfxHeaderStart $6f, GFXH_COMMON_SPRITES_TO_WRAM
	m_GfxHeader spr_common_sprites, $d006, $4d
	m_GfxHeaderEnd

m_GfxHeaderStart $70, GFXH_TILESET_MAKU_TREE
	m_GfxHeader gfx_tileset_maku_tree_common, $8801, $2f
	m_GfxHeader gfx_tileset_maku_tree_bottom, $8b01, $6f
	m_GfxHeaderEnd

m_GfxHeaderStart $71, GFXH_TILESET_MAKU_TREE_TOP
	m_GfxHeader gfx_tileset_maku_tree_common, $8801, $2f
	m_GfxHeader gfx_tileset_maku_tree_top, $8b01, $4f
	m_GfxHeaderEnd

m_GfxHeaderStart $72, GFXH_MERMAIDS_CAVE_WALL_RETRACTION
	m_GfxHeader map_mermaids_cave_wall_retraction, $d002, $23
	m_GfxHeader flg_mermaids_cave_wall_retraction, $d402, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $73, GFXH_ANCIENT_TOMB_WALL_RETRACTION
	m_GfxHeader map_ancient_tomb_wall_retraction, $d002, $17
	m_GfxHeader flg_ancient_tomb_wall_retraction, $d402, $17
	m_GfxHeaderEnd

m_GfxHeaderStart $74, GFXH_JABU_OPENING_1
	m_GfxHeader map_jabu_opening_1, $d8e3, $07
	m_GfxHeader flg_jabu_opening_1, $dce3, $07
	m_GfxHeaderEnd

m_GfxHeaderStart $75, GFXH_JABU_OPENING_2
	m_GfxHeader map_jabu_opening_2, $d8e3, $07
	m_GfxHeader flg_jabu_opening_2, $dce3, $07
	m_GfxHeaderEnd

m_GfxHeaderStart $76, GFXH_76
m_GfxHeaderStart $77, GFXH_77
m_GfxHeaderStart $78, GFXH_78
m_GfxHeaderStart $79, GFXH_79
m_GfxHeaderStart $7a, GFXH_7a

m_GfxHeaderStart $7b, GFXH_TILESET_INDOORS
	m_GfxHeader gfx_tileset_indoors_1, $8801, $7f
	m_GfxHeader gfx_tileset_indoors_rafton, $9001, $7f
	m_GfxHeaderEnd

m_GfxHeaderStart $7c, GFXH_TILESET_CAVE
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_cave_replacement_1, $8801, $0f
	m_GfxHeader gfx_tileset_cave_replacement_2, $8b01, $4f
	m_GfxHeader gfx_tileset_cave_1, $9001, $5f
	m_GfxHeader gfx_tileset_cave_2, $9601, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $7d, GFXH_TILESET_GORON_CAVE
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_cave_replacement_1, $8801, $0f
	m_GfxHeader gfx_tileset_cave_replacement_2, $8b01, $4f
	m_GfxHeader gfx_tileset_cave_1, $9001, $5f
	m_GfxHeader gfx_tileset_goron_cave, $9601, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $7e, GFXH_TILESET_MOBLIN_FORTRESS
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_moblin_fortress, $9401, $3f
	m_GfxHeaderEnd

m_GfxHeaderStart $7f, GFXH_TILESET_ZORA_PALACE
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_zora_palace, $9401, $3f
	m_GfxHeader gfx_tileset_zora_palace_replacement_1, $8b01, $03
	m_GfxHeader gfx_tileset_zora_palace_replacement_2, $9181, $07
	m_GfxHeaderEnd

m_GfxHeaderStart $80, GFXH_BLACK_TOWER_STAGE_3_LAYOUT
	m_GfxHeader map_black_tower_stage_3_top, $d004, $0f
	m_GfxHeader flg_black_tower_stage_3_top, $d404, $0f
	m_GfxHeader map_black_tower_stage_3_middle, $9800, $1d
	m_GfxHeader flg_black_tower_stage_3_middle, $9801, $1d
	m_GfxHeaderEnd

m_GfxHeaderStart $81, GFXH_BLACK_TOWER_STAGE_2_LAYOUT
	m_GfxHeader map_black_tower_stage_2, $9840, $19
	m_GfxHeader flg_black_tower_stage_2, $9841, $19
	m_GfxHeaderEnd

m_GfxHeaderStart $82, GFXH_BLACK_TOWER_STAGE_1_LAYOUT
	m_GfxHeader map_black_tower_stage_1, $99c0, $17
	m_GfxHeader flg_black_tower_stage_1, $99c1, $17
	m_GfxHeader map_black_tower_stage_1, $d803, $17
	m_GfxHeader flg_black_tower_stage_1, $dc03, $17
	m_GfxHeaderEnd

m_GfxHeaderStart $83, GFXH_COMMON_SPRITES
	m_GfxHeader spr_common_sprites, $8001, $4d
	m_GfxHeaderEnd

m_GfxHeaderStart $84, GFXH_CREDITS_SCENE_MAKU_TREE_PAST
	m_GfxHeader map_credits_maku_past_top_rows, $9800, $03
	m_GfxHeader flg_credits_maku_past_top_rows, $9801, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $85, GFXH_CREDITS_SCENE1
	m_GfxHeader map_credits_scene1_top_rows, $9800, $03
	m_GfxHeader flg_credits_scene1_top_rows, $9801, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $86, GFXH_CREDITS_IMAGE1
	m_GfxHeader spr_credits_font, $8000, $3b
	m_GfxHeader spr_credits_font_planners, $8400, $21
	m_GfxHeader gfx_credits_image1_1, $8800, $7f
	m_GfxHeader gfx_credits_image1_2, $9000, $58
	m_GfxHeader map_credits_image1, $9800, $23
	m_GfxHeader flg_credits_image1, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $87, GFXH_CREDITS_SCENE2
	m_GfxHeader map_credits_scene2, $9a00, $03
	m_GfxHeader flg_credits_scene2, $9a01, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $88, GFXH_CREDITS_IMAGE2
	m_GfxHeader spr_credits_font, $8000, $3b
	m_GfxHeader spr_credits_font, $d004, $3b
	m_GfxHeader spr_credits_font_nakanowatari, $d404, $13
	m_GfxHeader spr_credits_font, $d803, $3b
	m_GfxHeader spr_credits_font_nakanowatari, $dc03, $13
	m_GfxHeader spr_credits_font_nakanowatari, $8400, $13
	m_GfxHeader spr_credits_font_programmers, $8600, $13
	m_GfxHeader gfx_credits_image2_1, $8800, $7f
	m_GfxHeader gfx_credits_image2_2, $9000, $57
	m_GfxHeader map_credits_image2, $9800, $23
	m_GfxHeader flg_credits_image2, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $89, GFXH_CREDITS_SCENE3
	m_GfxHeader map_credits_scene3_top_rows, $9800, $03
	m_GfxHeader flg_credits_scene3_top_rows, $9801, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $8a, GFXH_CREDITS_IMAGE3
	m_GfxHeader spr_credits_font, $8000, $3b
	m_GfxHeader spr_credits_font, $d004, $3b
	m_GfxHeader spr_credits_font_object_designers, $d404, $1f
	m_GfxHeader spr_credits_font, $d803, $3b
	m_GfxHeader spr_credits_font_object_designers, $dc03, $1f
	m_GfxHeader spr_credits_font_object_designers, $8400, $1f
	m_GfxHeader gfx_credits_image3_1, $8800, $7f
	m_GfxHeader gfx_credits_image3_2, $9000, $5c
	m_GfxHeader map_credits_image3, $9800, $23
	m_GfxHeader flg_credits_image3, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $8b, GFXH_CREDITS_SCENE4
	m_GfxHeader map_credits_scene4_top_rows, $9a00, $03
	m_GfxHeader flg_credits_scene4_top_rows, $9a01, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $8c, GFXH_CREDITS_IMAGE4
	m_GfxHeader spr_credits_font, $8000, $3b
	m_GfxHeader spr_credits_font, $d004, $3b
	m_GfxHeader spr_credits_font_music, $d404, $19
	m_GfxHeader spr_credits_font, $d803, $3b
	m_GfxHeader spr_credits_font_music, $dc03, $19
	m_GfxHeader spr_credits_font_music, $8400, $19
	m_GfxHeader gfx_credits_image4_1, $8800, $7f
	m_GfxHeader gfx_credits_image4_2, $9000, $53
	m_GfxHeader map_credits_image4, $9800, $23
	m_GfxHeader flg_credits_image4, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $8d, GFXH_CREDITS_LINKED_SCENE1
	m_GfxHeader gfx_tileset_overworld_standard, $8801, $5f
	m_GfxHeader gfx_tileset_overworld_present, $8e01, $4f
	m_GfxHeader gfx_tileset_credits, $9301, $3f
	m_GfxHeader map_credits_linked_scene1, $9800, $23
	m_GfxHeader flg_credits_linked_scene1, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $8e, GFXH_CREDITS_LINKED_IMAGE1
	m_GfxHeader spr_credits_font, $8000, $3b
	m_GfxHeader spr_credits_font_planners, $8400, $21
	m_GfxHeader gfx_credits_linked_image1_1, $8800, $7f
	m_GfxHeader gfx_credits_linked_image1_2, $9000, $5f
	m_GfxHeader map_credits_linked_image1, $9800, $23
	m_GfxHeader flg_credits_linked_image1, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $8f, GFXH_CREDITS_LINKED_SCENE2
	m_GfxHeader gfx_tileset_overworld_standard, $8801, $5f
	m_GfxHeader gfx_tileset_overworld_present, $8e01, $4f
	m_GfxHeader gfx_tileset_credits, $9301, $3f
	m_GfxHeader map_credits_linked_scene2, $9800, $23
	m_GfxHeader flg_credits_linked_scene2, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $90, GFXH_CREDITS_LINKED_IMAGE2
	m_GfxHeader spr_credits_font, $8000, $3b
	m_GfxHeader spr_credits_font, $d004, $3b
	m_GfxHeader spr_credits_font_nakanowatari, $d404, $13
	m_GfxHeader spr_credits_font, $d803, $3b
	m_GfxHeader spr_credits_font_nakanowatari, $dc03, $13
	m_GfxHeader spr_credits_font_nakanowatari, $8400, $13
	m_GfxHeader spr_credits_font_programmers, $8600, $13
	m_GfxHeader gfx_credits_linked_image2_1, $8800, $7f
	m_GfxHeader gfx_credits_linked_image2_2, $9000, $5e
	m_GfxHeader map_credits_linked_image2, $9800, $23
	m_GfxHeader flg_credits_linked_image2, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $91, GFXH_CREDITS_LINKED_SCENE3
	m_GfxHeader gfx_tileset_overworld_standard, $8801, $5f
	m_GfxHeader gfx_tileset_overworld_present, $8e01, $4f
	m_GfxHeader gfx_tileset_credits, $9301, $3f
	m_GfxHeader map_credits_linked_scene3, $9800, $23
	m_GfxHeader flg_credits_linked_scene3, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $92, GFXH_CREDITS_LINKED_IMAGE3
	m_GfxHeader spr_credits_font, $8000, $3b
	m_GfxHeader spr_credits_font, $d004, $3b
	m_GfxHeader spr_credits_font_object_designers, $d404, $1f
	m_GfxHeader spr_credits_font, $d803, $3b
	m_GfxHeader spr_credits_font_object_designers, $dc03, $1f
	m_GfxHeader spr_credits_font_object_designers, $8400, $1f
	m_GfxHeader gfx_credits_linked_image3_1, $8800, $7f
	m_GfxHeader gfx_credits_linked_image3_2, $9000, $60
	m_GfxHeader map_credits_linked_image3, $9800, $23
	m_GfxHeader flg_credits_linked_image3, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $93, GFXH_CREDITS_LINKED_SCENE4
	m_GfxHeader gfx_tileset_overworld_standard, $8801, $5f
	m_GfxHeader gfx_tileset_overworld_present, $8e01, $4f
	m_GfxHeader gfx_tileset_credits, $9301, $3f
	m_GfxHeader map_credits_linked_scene4, $9800, $23
	m_GfxHeader flg_credits_linked_scene4, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $94, GFXH_CREDITS_LINKED_IMAGE4
	m_GfxHeader spr_credits_font, $8000, $3b
	m_GfxHeader spr_credits_font, $d004, $3b
	m_GfxHeader spr_credits_font_music, $d404, $19
	m_GfxHeader spr_credits_font, $d803, $3b
	m_GfxHeader spr_credits_font_music, $dc03, $19
	m_GfxHeader spr_credits_font_music, $8400, $19
	m_GfxHeader gfx_credits_linked_image4_1, $8800, $7f
	m_GfxHeader gfx_credits_linked_image4_2, $9000, $4e
	m_GfxHeader map_credits_linked_image4, $9800, $23
	m_GfxHeader flg_credits_linked_image4, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $95, GFXH_CREDITS_SCROLL
	m_GfxHeader spr_credits_font, $8000, $3b
	m_GfxHeader spr_credits_sprites_1, $8400, $3f
	m_GfxHeader spr_credits_sprites_2, $8001, $73
	m_GfxHeader spr_triforce_sparkle_vineseed_bookofseals, $d004, $1f
	m_GfxHeader gfx_credits_bg_1, $8800, $7f
	m_GfxHeader gfx_credits_bg_2, $9000, $7f
	m_GfxHeader gfx_credits_bg_3, $8801, $7f
	m_GfxHeader map_credits_bg, $9800, $3f
	m_GfxHeader flg_credits_bg, $9801, $3f
	m_GfxHeaderEnd

m_GfxHeaderStart $96, GFXH_TO_BE_CONTINUED
	m_GfxHeader gfx_tobecontinued, $8800, $7d
	m_GfxHeader map_tobecontinued, $9800, $23
	m_GfxHeader flg_tobecontinued, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $97, GFXH_SECRET_FOR_LINKED_GAME
	m_GfxHeader spr_fileselect_decorations, $8200, $13
	m_GfxHeader gfx_hud, $9000, $07
	m_GfxHeader gfx_hud, $9001, $1f
	m_GfxHeader gfx_fileselect, $9201, $5f
	m_GfxHeader gfx_secrettoholodrum, $8801, $1f
	m_GfxHeader map_file_menu_top, $d803, $09
	m_GfxHeader flg_file_menu_top, $dc03, $09
	m_GfxHeader map_secret_for_linked_game, $d8a3, $13
	m_GfxHeader flg_secret_for_linked_game, $dca3, $13
	m_GfxHeader map_save_menu_bottom, $d9e3, $07
	m_GfxHeader flg_save_menu_bottom, $dde3, $07
	m_GfxHeaderEnd

m_GfxHeaderStart $98, GFXH_CREDITS_THE_END
	m_GfxHeader gfx_credits_theend_1, $8801, $7f
	m_GfxHeader gfx_credits_theend_2, $9001, $43
	m_GfxHeader map_credits_theend, $9800, $23
	m_GfxHeader flg_credits_theend, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $99, GFXH_CREDITS_LINKED_THE_END
	m_GfxHeader gfx_credits_linked_theend_1, $8a01, $5f
	m_GfxHeader gfx_credits_linked_theend_2, $9001, $57
	m_GfxHeader map_credits_linked_theend, $9800, $23
	m_GfxHeader flg_credits_linked_theend, $9801, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $9a, GFXH_CREDITS_LINKED_WAVING_GOODBYE
	m_GfxHeader spr_credits_linked_waving_goodbye, $8000, $27
	m_GfxHeader gfx_credits_linked_waving_goodbye_1, $8800, $7f
	m_GfxHeader gfx_credits_linked_waving_goodbye_2, $9000, $0f
	m_GfxHeader gfx_credits_linked_waving_goodbye_3, $8801, $7f
	m_GfxHeader gfx_credits_linked_waving_goodbye_4, $9001, $7f
	m_GfxHeader map_credits_linked_waving_goodbye_1, $9800, $3f
	m_GfxHeader flg_credits_linked_waving_goodbye_1, $9801, $3f
	m_GfxHeader map_credits_linked_waving_goodbye_2, $d004, $0b
	m_GfxHeader flg_credits_linked_waving_goodbye_2, $d404, $0b
	m_GfxHeaderEnd

m_GfxHeaderStart $9b, GFXH_INTRO_LINK_RIDING_HORSE
	m_GfxHeader spr_intro_link_on_horse_front, $8000, $6f
	m_GfxHeader gfx_intro_link_on_horse_front_bg, $8800, $69
	m_GfxHeader gfx_intro_link_face_shot, $9000, $62
	m_GfxHeader spr_intro_link_on_horse_far, $8001, $6d
	m_GfxHeader spr_intro_link_face_shot_sparkle, $8801, $25
	m_GfxHeader gfx_intro_link_on_horse_far_bg_1, $8c01, $3f
	m_GfxHeader gfx_intro_link_on_horse_far_bg_2, $9001, $1a
	m_GfxHeader map_intro_link_on_horse_far, $9860, $29
	m_GfxHeader flg_intro_link_on_horse_far, $9861, $29
	m_GfxHeader map_intro_link_face_shot, $9b20, $0b
	m_GfxHeader flg_intro_link_face_shot, $9b21, $0b
	m_GfxHeader map_intro_bar, $9c00, $05
	m_GfxHeader flg_intro_bar, $9c01, $05
	m_GfxHeader map_intro_link_on_horse_front_ground, $d803, $09
	m_GfxHeader flg_intro_link_on_horse_front_ground, $dc03, $09
	m_GfxHeader map_intro_bar, $9e60, $05
	m_GfxHeader flg_intro_bar, $9e61, $05
	m_GfxHeader map_intro_link_on_horse_front_bg, $9ec0, $13
	m_GfxHeader flg_intro_link_on_horse_front_bg, $9ec1, $13
	m_GfxHeaderEnd

m_GfxHeaderStart $9c, GFXH_INTRO_LINK_ON_HORSE_CLOSEUP
	m_GfxHeader map_link_on_horse_closeup, $9c00, $3f
	m_GfxHeader flg_link_on_horse_closeup, $9c01, $3f
	m_GfxHeader spr_link_on_horse_closeup, $8000, $4d
	m_GfxHeader gfx_link_on_horse_closeup_1, $8800, $7f
	m_GfxHeader gfx_link_on_horse_closeup_2, $9000, $7f
	m_GfxHeader gfx_link_on_horse_closeup_3, $8801, $7f
	m_GfxHeader gfx_link_on_horse_closeup_4, $9001, $2d
	m_GfxHeaderEnd

m_GfxHeaderStart $9d, GFXH_INTRO_OUTSIDE_CASTLE
	m_GfxHeader spr_intro_outside_castle_sprites, $8000, $6d
	m_GfxHeader gfx_intro_outside_castle_1, $8800, $7f
	m_GfxHeader gfx_intro_outside_castle_2, $9000, $7f
	m_GfxHeader gfx_intro_outside_castle_3, $8801, $4f
	m_GfxHeader map_intro_outside_castle, $9c00, $23
	m_GfxHeader flg_intro_outside_castle, $9c01, $23
	m_GfxHeaderEnd

m_GfxHeaderStart $9e, GFXH_INTRO_TEMPLE_SCENE
	m_GfxHeader gfx_tileset_dungeon_standard_1, $8801, $7f
	m_GfxHeader gfx_tileset_dungeon_standard_2, $9001, $3f
	m_GfxHeader gfx_tileset_maku_path, $9401, $3f
	m_GfxHeader gfx_hud, $9000, $07
	m_GfxHeader map_intro_triforce_room, $9800, $3f
	m_GfxHeader flg_intro_triforce_room, $9801, $3f
	m_GfxHeader map_intro_triforce_room, $d803, $3f
	m_GfxHeader flg_intro_triforce_room, $dc03, $3f
	m_GfxHeaderEnd

m_GfxHeaderStart $9f, GFXH_TITLESCREEN_TREE_SCROLL
	m_GfxHeader gfx_titlescreen_5, $8800, $4f
	m_GfxHeader gfx_titlescreen_2, $8d00, $5f
	m_GfxHeader gfx_titlescreen_7, $9300, $0f
	m_GfxHeader gfx_titlescreen_4, $9400, $3f
	m_GfxHeader gfx_titlescreen_tree_1, $8801, $7f
	m_GfxHeader gfx_titlescreen_tree_2, $9001, $7f
	m_GfxHeader map_titlescreen_scroll_2, $d004, $29
	m_GfxHeader flg_titlescreen_scroll_2, $d404, $29
	m_GfxHeader map_titlescreen_scroll_1, $9c00, $3f
	m_GfxHeader flg_titlescreen_scroll_1, $9c01, $3f
	m_GfxHeaderEnd

m_GfxHeaderStart $a0, GFXH_FILE_MENU_GFX
	m_GfxHeader spr_link, $8000, $1f $200
	m_GfxHeader spr_rod_of_seasons, $81a0, $03
	m_GfxHeader gfx_hud, $9000, $1f
	m_GfxHeader gfx_hud, $9001, $1f
	m_GfxHeader spr_fileselect_decorations, $8200, $13
	m_GfxHeader gfx_fileselect, $9201, $5f
	m_GfxHeaderEnd

m_GfxHeaderStart $ba, GFXH_FILE_MENU_WITH_MESSAGE_SPEED
	m_GfxHeader map_file_menu_message_speed, $d244, $07
	m_GfxHeader flg_file_menu_message_speed, $d644, $07
	; Fall through
m_GfxHeaderStart $a1, GFXH_FILE_MENU
	m_GfxHeader spr_din_1, $8001, $05
	m_GfxHeader spr_nayru_1, $8061, $03
	m_GfxHeader gfx_messagespeed, $9200, $1f
	m_GfxHeader gfx_pickafile_2, $8801, $1f
	m_GfxHeader gfx_copy, $8a01, $09
	m_GfxHeader gfx_erase, $8aa1, $09
	; Fall through
m_GfxHeaderStart $a2, GFXH_FILE_MENU_LAYOUT
	m_GfxHeader map_file_menu_top, $d004, $09
	m_GfxHeader flg_file_menu_top, $d404, $09
	m_GfxHeader map_file_menu_middle, $d0a4, $13
	m_GfxHeader flg_file_menu_middle, $d4a4, $13
	m_GfxHeader map_file_menu_bottom, $d1e4, $05
	m_GfxHeader flg_file_menu_bottom, $d5e4, $05
	m_GfxHeaderEnd

m_GfxHeaderStart $a3, GFXH_FILE_MENU_COPY
	m_GfxHeader gfx_copywhatwhere, $8801, $1f
	m_GfxHeader gfx_quit_2, $8a01, $09
	m_GfxHeader gfx_copy, $8aa1, $09
	m_GfxHeader map_file_menu_top, $d004, $09
	m_GfxHeader flg_file_menu_top, $d404, $09
	m_GfxHeader map_file_menu_copy, $d0a4, $13
	m_GfxHeader flg_file_menu_copy, $d4a4, $13
	m_GfxHeader map_file_menu_bottom, $d1e4, $05
	m_GfxHeader flg_file_menu_bottom, $d5e4, $05
	m_GfxHeaderEnd

m_GfxHeaderStart $a4, GFXH_FILE_MENU_ERASE
	m_GfxHeader gfx_pickafile, $8801, $1f
	m_GfxHeader gfx_quit_2, $8a01, $09
	m_GfxHeader gfx_erase, $8aa1, $09
	m_GfxHeaderEnd

m_GfxHeaderStart $a5, GFXH_NAME_ENTRY
	m_GfxHeader gfx_name, $8801, $09
	m_GfxHeader map_name_entry_top, $d004, $09
	m_GfxHeader flg_name_entry_top, $d404, $09
	m_GfxHeader map_name_entry_middle, $d0a4, $13
	m_GfxHeader flg_name_entry_middle, $d4a4, $13
	m_GfxHeader map_name_entry_bottom, $d1e4, $07
	m_GfxHeader flg_name_entry_bottom, $d5e4, $07
	m_GfxHeaderEnd

m_GfxHeaderStart $a6, GFXH_SAVE_MENU_LAYOUT
	m_GfxHeader map_file_menu_top, $d004, $09
	m_GfxHeader flg_file_menu_top, $d404, $09
	m_GfxHeader map_save_menu_middle, $d0a4, $13
	m_GfxHeader flg_save_menu_middle, $d4a4, $13
	m_GfxHeader map_save_menu_bottom, $d1e4, $07
	m_GfxHeader flg_save_menu_bottom, $d5e4, $07
	m_GfxHeaderEnd

m_GfxHeaderStart $a7, GFXH_NEW_FILE_OPTIONS
	m_GfxHeader gfx_newfilescreen, $8801, $67
	m_GfxHeaderEnd

m_GfxHeaderStart $a8, GFXH_SAVE_MENU_GFX
	m_GfxHeader gfx_savescreen, $8801, $67
	m_GfxHeaderEnd

m_GfxHeaderStart $a9, GFXH_GAME_OVER_GFX
	m_GfxHeader gfx_gameover, $8801, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $aa, GFXH_SECRET_ENTRY_GFX
	m_GfxHeader gfx_secret_thatswrong, $8801, $1f
	m_GfxHeaderEnd

; Unused(?): A smaller version of GFXH_SECRET_ENTRY_LAYOUT, could be more suitable for short
; 5-letter secrets, but apparently not used.
m_GfxHeaderStart $ab, GFXH_SECRET_ENTRY_LAYOUT_SMALL
	m_GfxHeader map_name_entry_top, $d004, $09
	m_GfxHeader flg_name_entry_top, $d404, $09
	m_GfxHeader map_secret_entry_middle, $d0a4, $13
	m_GfxHeader flg_secret_entry_middle, $d4a4, $13
	m_GfxHeader map_secret_entry_bottom, $d1e4, $07
	m_GfxHeader flg_secret_entry_bottom, $d5e4, $07
	m_GfxHeaderEnd

m_GfxHeaderStart $ac, GFXH_SECRET_ENTRY_LAYOUT
	m_GfxHeader map_secret_entry_top, $d004, $09
	m_GfxHeader flg_secret_entry_top, $d404, $09
	m_GfxHeader map_secret_entry_middle, $d0a4, $13
	m_GfxHeader flg_secret_entry_middle, $d4a4, $13
	m_GfxHeader map_secret_entry_bottom, $d1e4, $07
	m_GfxHeader flg_secret_entry_bottom, $d5e4, $07
	m_GfxHeaderEnd

m_GfxHeaderStart $ad, GFXH_SECRET_ENTRY_ERROR_LAYOUT
	m_GfxHeader map_secret_entry_error, $d144, $03
	m_GfxHeader flg_secret_entry_error, $d544, $03
	m_GfxHeaderEnd

m_GfxHeaderStart $ae, GFXH_GAME_LINK
	m_GfxHeader gfx_messagespeed, $9200, $1f
	m_GfxHeader gfx_pickafile_2, $8801, $1f
	m_GfxHeader gfx_copy, $8a01, $09
	m_GfxHeader gfx_erase, $8aa1, $09
	m_GfxHeader map_file_menu_top, $d004, $09
	m_GfxHeader flg_file_menu_top, $d404, $09
	m_GfxHeader map_file_menu_middle, $d0a4, $13
	m_GfxHeader flg_file_menu_middle, $d4a4, $13
	m_GfxHeader map_file_menu_bottom, $d1e4, $05
	m_GfxHeader flg_file_menu_bottom, $d5e4, $05
	m_GfxHeader gfx_linking, $8801, $1f
	; Fall through
m_GfxHeaderStart $af, GFXH_QUIT_GFX
	m_GfxHeader gfx_quit, $8a01, $13
	m_GfxHeaderEnd

m_GfxHeaderStart $b0, GFXH_GANON_REVIVAL
	m_GfxHeader spr_ganon_1, $8000, $1f
	m_GfxHeader spr_twinrova_sacrifice_1, $8200, $1f
	m_GfxHeader spr_twinrova_sacrifice_2, $8400, $1f
	m_GfxHeader spr_twinrova_sacrifice_3, $8600, $1f
	m_GfxHeader spr_twinrova_sacrifice_4, $8800, $1d
	m_GfxHeaderEnd

m_GfxHeaderStart $b1, GFXH_GANON_A
	m_GfxHeader spr_ganon_2, $d002, $1d
	m_GfxHeaderEnd

m_GfxHeaderStart $b2, GFXH_GANON_B
	m_GfxHeader spr_ganon_5, $d002, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $b3, GFXH_GANON_C
	m_GfxHeader spr_ganon_6, $d002, $11
	m_GfxHeaderEnd

m_GfxHeaderStart $b4, GFXH_GANON_D
	m_GfxHeader spr_ganon_7, $d002, $17
	m_GfxHeaderEnd

m_GfxHeaderStart $b5, GFXH_GANON_E
	m_GfxHeader spr_ganon_8, $d002, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $b6, GFXH_GANON_F
	m_GfxHeader spr_ganon_9, $d002, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $b7, GFXH_GANON_G
	m_GfxHeader spr_ganon_10, $d002, $1f
	m_GfxHeaderEnd

m_GfxHeaderStart $b8, GFXH_TWINROVA_LAVA_LAYOUT
	m_GfxHeader oth_twinrova_lava_layout, $cf00, $0a
	m_GfxHeaderEnd

m_GfxHeaderStart $b9, GFXH_TWINROVA_NORMAL_LAYOUT
	m_GfxHeader oth_twinrova_normal_layout, $cf00, $0a
	m_GfxHeaderEnd
