# re-assign rules to any objects that need them
execute as @e[type=item_display,tag=baba.object,tag=assign] run data modify entity @s item.tag.parsing set value {delete:0b,block_transforms:0b,transforms:[],writes:[],properties:[],has:[],make:[]}
scoreboard players set @e[type=item_display,tag=baba.object,tag=assign] move_stacks 0
scoreboard players set @e[type=item_display,tag=baba.object,tag=assign] shift_stacks 0
tag @e[type=item_display,tag=baba.object,tag=assign,tag=assign_move] remove assign_move
tag @e[type=item_display,tag=baba.object,tag=assign,tag=assign_idle] remove assign_idle
tag @e[type=item_display,tag=baba.object,tag=assign,tag=assign_always] remove assign_always

# apply negative rules first, this will prevent the matching positive rules from applying
execute as @e[type=marker,tag=baba.rule,tag=effect_inverted] run function baba:board/rules/apply
execute as @e[type=marker,tag=baba.rule,tag=!effect_inverted,scores={text_disabled=0}] run function baba:board/rules/apply

execute if entity @e[type=item_display,tag=baba.object,tag=joined_group,limit=1] as @e[type=marker,tag=baba.rule,tag=subject_group,tag=effect_inverted] run function baba:board/rules/apply_group
execute if entity @e[type=item_display,tag=baba.object,tag=joined_group,limit=1] as @e[type=marker,tag=baba.rule,tag=subject_group,tag=!effect_inverted,scores={text_disabled=0}] run function baba:board/rules/apply_group
tag @e[type=item_display,tag=baba.object,tag=joined_group] remove joined_group

execute as @e[type=item_display,tag=baba.object,tag=assign] run function baba:board/rules/finalize
tag @e[type=item_display,tag=baba.object,tag=assign] add dirty
execute at @e[type=item_display,tag=baba.object,tag=assign] run tag @e[type=marker,tag=baba.space,tag=!dirty,distance=..0.1,limit=1] add dirty
tag @e[type=item_display,tag=baba.object,tag=assign] remove assign
