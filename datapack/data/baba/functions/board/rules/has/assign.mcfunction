data modify storage baba:main has_object set from entity @s data.text
execute as @e[type=marker,tag=baba.object] run function baba:board/rules/has/assign_self
