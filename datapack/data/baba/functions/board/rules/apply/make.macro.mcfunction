$execute if entity @s[type=item_display] unless data entity @s item.components."minecraft:custom_data".parsing.make[{inverted:1b,text:"$(apply)"}] run data modify entity @s item.components."minecraft:custom_data".parsing.make append from storage baba:main effect
$execute if entity @s[type=marker] unless data entity @s data.parsing.make[{inverted:1b,text:"$(apply)"}] run data modify entity @s data.parsing.make append from storage baba:main effect
