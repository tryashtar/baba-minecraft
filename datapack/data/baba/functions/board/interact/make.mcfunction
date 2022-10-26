execute store result score spawn baba run data get entity @s data.make[0]
# when making text, you make text of your own kind
execute store result score spawn_text baba run data get entity @s data.sprite
scoreboard players set make baba 1
execute as @e[type=marker,tag=baba.object,distance=..0.1] if score @s sprite = spawn baba run scoreboard players set make baba 0
execute if score make baba matches 1 run function baba:board/spawn
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add transformed
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing = @s facing
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] walk = @s walk
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] frame = @s frame
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove entity @s data.make[0]
execute if data entity @s data.make[0] run function baba:board/interact/make
