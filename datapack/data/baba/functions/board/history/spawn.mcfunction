summon marker ~ ~ ~ {Tags:["spawn"]}
execute store result score @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing run data get storage baba:main objects[0].scores.facing
execute store result score @e[type=marker,tag=spawn,distance=..0.1,limit=1] walk run data get storage baba:main objects[0].scores.walk
scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] frame 0
data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data set from storage baba:main objects[0].data
# this removes the spawn tag and applies the baba.object tag
data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] Tags set from storage baba:main objects[0].tags
data remove storage baba:main objects[0]
execute if data storage baba:main objects[0] run function baba:board/history/spawn
