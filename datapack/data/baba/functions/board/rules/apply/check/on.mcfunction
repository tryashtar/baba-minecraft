execute store result score condition_inverted baba run data get storage baba:main condition.inverted
scoreboard players set passes baba 0
execute as @e[type=marker,tag=baba.object,tag=!self,distance=..0.1] run function baba:board/rules/apply/check/condition_sprite
execute if score passes baba matches 0 run scoreboard players set affected baba 0

data remove storage baba:main condition.parameters[0]
execute if score affected baba matches 1 if data storage baba:main condition.parameters[0] run function baba:board/rules/apply/check/near
