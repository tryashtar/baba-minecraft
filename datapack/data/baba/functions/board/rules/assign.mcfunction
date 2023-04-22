# re-assign rules to any objects that need them
execute as @e[type=item_display,tag=baba.object,tag=assign] run data modify entity @s item.tag.parsing set value {delete:0b,block_transforms:0b,transforms:[],writes:[],properties:[],has:[],make:[]}
tag @e[type=item_display,tag=baba.object,tag=assign_move] remove assign_move
tag @e[type=item_display,tag=baba.object,tag=assign_idle] remove assign_idle
tag @e[type=item_display,tag=baba.object,tag=assign_always] remove assign_always

# apply negative rules first, this will prevent the matching positive rules from applying
summon marker ~ ~ ~ {UUID:[I;-1360730055,1799769912,-1745300323,-25935887]}
data modify storage baba:main iter_rules set value []
data modify storage baba:main iter_rules append from storage baba:main rules[{effect:{inverted:1b}}]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/apply
data modify storage baba:main iter_rules set value []
data modify storage baba:main iter_rules append from storage baba:main rules[{effect:{inverted:0b}}]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/apply
kill aee4e839-6b46-4f38-97f8-d49dfe743ff1

execute as @e[type=item_display,tag=baba.object,tag=assign] run function baba:board/rules/finalize
