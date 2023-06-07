summon text_display ~ ~ ~ {Tags:["rule_display","new"],Rotation:[90f,0f]}
scoreboard players operation @e[type=text_display,tag=rule_display,tag=new,distance=..0.01,limit=1] text_id = @s text_id
execute as @e[type=text_display,tag=rule_display,tag=new,distance=..0.01,limit=1] run function baba:dev/rules/update
