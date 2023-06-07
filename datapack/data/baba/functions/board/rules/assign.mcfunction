# re-assign rules to any objects that need them
execute as @e[type=item_display,tag=baba.object,tag=assign] run data modify entity @s item.tag.parsing set value {delete:0b,block_transforms:0b,transforms:[],writes:[],properties:[],has:[],make:[]}
tag @e[type=item_display,tag=baba.object,tag=assign_move] remove assign_move
tag @e[type=item_display,tag=baba.object,tag=assign_idle] remove assign_idle
tag @e[type=item_display,tag=baba.object,tag=assign_always] remove assign_always

# apply negative rules first, this will prevent the matching positive rules from applying
data modify storage baba:main iter_rules set value []
data modify storage baba:main iter_rules append from storage baba:main rules[{effect:{inverted:1b}}]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/apply
data modify storage baba:main iter_rules set value []
data modify storage baba:main iter_rules append from storage baba:main rules[{effect:{inverted:0b}}]
execute if data storage baba:main iter_rules[0] run function baba:board/rules/apply

execute as @e[type=item_display,tag=baba.object,tag=assign] run function baba:board/rules/finalize
tag @e[type=item_display,tag=baba.object,tag=assign] add dirty
execute at @e[type=item_display,tag=baba.object,tag=assign] run tag @e[type=marker,tag=baba.space,tag=!dirty,distance=..0.1,limit=1] add dirty
tag @e[type=item_display,tag=baba.object,tag=assign] remove assign
