execute if entity @s[type=item_display] run data modify storage baba:main spawn set from entity @s item.tag.has
execute if entity @s[type=marker] run data modify storage baba:main spawn set from entity @s data.has
execute if block ~ ~-1 ~ #baba:board if data storage baba:main spawn[0] run function baba:board/interact/spawn
function baba:board/interact/remove
