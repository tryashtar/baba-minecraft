execute store result score spawn baba run data get entity @s HandItems[0].tag.make[0]
# when making text, you make text of your own kind
scoreboard players operation spawn_text baba = @s sprite
scoreboard players set make baba 1
execute as @e[type=armor_stand,tag=baba.object,distance=..0.1] if score @s sprite = spawn baba run scoreboard players set make baba 0
execute if score make baba matches 1 run function baba:board/spawn
tag @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] add assign
scoreboard players operation @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] facing = @s facing
tag @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove entity @s HandItems[0].tag.make[0]
execute if data entity @s HandItems[0].tag.make[0] run function baba:board/interact/make
