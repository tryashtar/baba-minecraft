data modify storage baba:main transform_into set from entity @s data.text
execute as @e[type=marker,tag=baba.object,tag=!transformed] run function baba:board/rules/transform/assign_self
