# parse text and cache properties in the affected objects
summon marker ~ ~ ~ {UUID:[I;-1360730055,1799769912,-1745300323,-25935887]}
data modify storage baba:main rules set value []
scoreboard players set text_id baba 0
execute as @e[type=marker,tag=baba.object,tag=part.verb] at @s run function baba:board/rules/parse
execute as @e[type=marker,tag=baba.object] at @s run function baba:board/rules/apply
execute as @e[type=marker,tag=baba.object,tag=!transformed] at @s if data entity @s data.transforms[0] run function baba:board/rules/transform
# anything that was transformed needs to re-assign its properties, but not transform again
execute as @e[type=marker,tag=baba.object,tag=transformed] at @s run function baba:board/rules/apply
kill aee4e839-6b46-4f38-97f8-d49dfe743ff1
