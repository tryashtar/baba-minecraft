scoreboard players add @e[type=item_display,tag=baba.object,tag=dirty,scores={float_level=1..}] z_layer 100
execute as @e[type=item_display,tag=baba.object,tag=dirty,tag=!empty] on passengers run kill @s
execute as @e[type=item_display,tag=baba.object,tag=dirty,tag=!empty] run function baba:display/object
scoreboard players remove @e[type=item_display,tag=baba.object,tag=dirty,scores={z_layer=100..}] z_layer 100
tag @e[tag=baba.object,tag=dirty] remove dirty
