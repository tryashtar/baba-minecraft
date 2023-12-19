execute if entity @s[type=item_display] run data modify storage baba:main spawn set from entity @s item.tag.transforms
execute if entity @s[type=marker] run data modify storage baba:main spawn set from entity @s data.transforms
function baba:board/interact/transform_loop
function baba:board/interact/remove
