scoreboard players set passes baba 0
execute store result score check_sprite baba run data get storage baba:main condition.parameters[0].sprite
execute if data storage baba:main condition{inverted:0b} as @e[type=marker,tag=baba.object,tag=!self,distance=..0.1] if score @s sprite = check_sprite baba run scoreboard players set passes baba 1
execute if data storage baba:main condition{inverted:1b} as @e[type=marker,tag=baba.object,tag=!self,distance=..0.1] unless score @s sprite matches 30442 if score @s sprite = check_sprite baba run scoreboard players set passes baba 1
execute if score passes baba matches 0 run scoreboard players set affected baba 0

data remove storage baba:main condition.parameters[0]
execute if score affected baba matches 1 if data storage baba:main condition.parameters[0] run function baba:board/rules/apply/check/near
