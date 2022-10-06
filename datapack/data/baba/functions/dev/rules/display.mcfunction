kill @e[type=area_effect_cloud,tag=rule_display]
execute as @e[type=marker,tag=baba.object,scores={text_id=1..},nbt={data:{sprite:"text"}}] at @s run function baba:dev/rules/display_spawn
