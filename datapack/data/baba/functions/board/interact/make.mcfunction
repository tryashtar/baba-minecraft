execute if entity @s[type=item_display] run data modify storage baba:main spawn set from entity @s item.components."minecraft:custom_data".baba.make
execute if entity @s[type=marker] run data modify storage baba:main spawn set from entity @s data.make
function baba:board/interact/make_loop
