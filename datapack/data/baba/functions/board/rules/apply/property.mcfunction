data modify storage baba:main check set value []
execute if entity @s[type=item_display] run data modify storage baba:main check append from entity @s item.tag.parsing.properties[{inverted:1b}].text
execute if entity @s[type=marker] run data modify storage baba:main check append from entity @s data.parsing.properties[{inverted:1b}].text
execute store result score size baba run data get storage baba:main check
execute store result score changed baba run data modify storage baba:main check[] set from storage baba:main effect.text
execute if entity @s[type=item_display] if score changed baba >= size baba run data modify entity @s item.tag.parsing.properties append from storage baba:main effect
execute if entity @s[type=marker] if score changed baba >= size baba run data modify entity @s data.parsing.properties append from storage baba:main effect
execute if score changed baba >= size baba if data storage baba:main effect{inverted:0b,text:4085899} run tag @s add joined_group

execute if score changed baba >= size baba if data storage baba:main effect{inverted:0b,text:267413} run scoreboard players add @s move_stacks 1
execute if score changed baba >= size baba if data storage baba:main effect{inverted:0b,text:10261586} run scoreboard players add @s shift_stacks 1
