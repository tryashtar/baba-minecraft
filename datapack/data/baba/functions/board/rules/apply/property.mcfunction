data modify storage baba:main context.apply set from storage baba:main effect.text
execute store success score apply baba run function baba:board/rules/apply/property.macro with storage baba:main context

execute if score apply baba matches 1 if data storage baba:main effect{inverted:0b,text:4085899} run tag @s add joined_group
execute if score apply baba matches 1 if data storage baba:main effect{inverted:0b,text:267413} run scoreboard players add @s move_stacks 1
execute if score apply baba matches 1 if data storage baba:main effect{inverted:0b,text:10261586} run scoreboard players add @s shift_stacks 1
