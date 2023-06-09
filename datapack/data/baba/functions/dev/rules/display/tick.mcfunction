execute as @e[type=item_display,tag=baba.object,scores={sprite=397973,text_id=1..}] at @s run function baba:dev/rules/display/object_tick
execute as @e[type=text_display,tag=rule_display] run function baba:dev/rules/display/text_tick

execute unless entity @e[type=text_display,tag=rule_summary,limit=1] run summon text_display 0 1 0 {Tags:["rule_summary"],Rotation:[90f,0f],alignment:"left",line_width:1000,background:-16777216,transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
execute as @e[type=text_display,tag=rule_summary] run function baba:dev/rules/display/summary_tick
