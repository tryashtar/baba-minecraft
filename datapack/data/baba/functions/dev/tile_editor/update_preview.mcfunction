kill @e[type=item_display,tag=baba.overlay,tag=tile_editor_preview]
scoreboard players set palette baba 0
function baba:display/object
tp @s ~ ~ ~
execute on passengers run tag @s add tile_editor_preview
