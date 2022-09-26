data modify storage baba:main set_property set from entity @s data.text
execute as @e[type=marker,tag=baba.object] run function baba:board/rules/property/assign_self
