data modify storage baba:main transform_into set from entity @s data.text
execute as @e[type=marker,tag=baba.tile] run function baba:board/rules/assign_transform_self
