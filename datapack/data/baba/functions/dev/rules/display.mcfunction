execute as @e[type=item_display,tag=baba.object,scores={sprite=30442,text_id=1..}] at @s run function baba:dev/rules/display_spawn
execute as @e[type=text_display,tag=rule_display] at @s unless entity @e[type=item_display,tag=baba.object,scores={sprite=30442,text_id=1..},distance=..0.01,limit=1] run kill @s
