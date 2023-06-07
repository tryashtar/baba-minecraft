execute as @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=1..}] at @s run function baba:dev/rules/spawn_check
execute as @e[type=text_display,tag=rule_display] run function baba:dev/rules/despawn_check
