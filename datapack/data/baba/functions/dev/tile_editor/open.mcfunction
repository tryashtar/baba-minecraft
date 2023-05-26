function baba:dev/tile_editor/close

data modify storage baba:main tile set value []
data modify storage baba:main level set value {tiles:[[[{}]]]}
execute positioned ~ ~-1 ~ run function baba:editor/pack/block
data modify storage baba:main level.tiles[0][0][0] set from storage baba:main tile[0]
function baba:editor/load/spawn
tag @e[type=item_display,tag=baba.object,distance=..0.1] add tile_editor_preview
tp @e[type=item_display,tag=baba.object,tag=tile_editor_preview] ~0.5 ~0.01 ~0.5
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview] at @s run function baba:dev/tile_editor/update_preview

function baba:dev/tile_editor/menu/main
