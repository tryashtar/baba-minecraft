execute as @e[type=marker,tag=baba.object,tag=empty] at @s store result score @s life if entity @e[type=#baba:object,tag=baba.object,distance=..0.1,limit=2]
kill @e[type=marker,tag=baba.object,tag=empty,scores={life=2..}]
execute at @e[type=marker,tag=baba.space] unless entity @e[type=#baba:object,tag=baba.object,distance=..0.1,limit=1] run summon marker ~ ~ ~ {Tags:["baba","baba.object","not_all","empty","spawn","assign"]}
scoreboard players set @e[type=marker,tag=baba.object,tag=empty,tag=spawn] sprite 2925313
execute as @e[type=marker,tag=baba.object,tag=empty,tag=spawn] store result score @s facing run random value 1..4
tag @e[type=marker,tag=baba.object,tag=empty,tag=spawn] remove spawn
