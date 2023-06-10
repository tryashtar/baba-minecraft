data modify storage baba:main check set value []
data modify storage baba:main check append from entity @s item.tag.parsing.properties[{inverted:1b}].text
execute store result score size baba run data get storage baba:main check
execute store result score changed baba run data modify storage baba:main check[] set from storage baba:main rule.effect.text
execute if score changed baba >= size baba run data modify entity @s item.tag.parsing.properties append from storage baba:main rule.effect
execute if score changed baba >= size baba if data storage baba:main rule.effect{inverted:0b,text:267413} run scoreboard players add @s move_stacks 1
execute if score changed baba >= size baba if data storage baba:main rule.effect{inverted:0b,text:10261586} run scoreboard players add @s shift_stacks 1
