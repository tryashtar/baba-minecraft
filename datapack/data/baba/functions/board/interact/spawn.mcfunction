summon marker ~ ~ ~ {Tags:["baba.object","spawn"]}
scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing 4
data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.sprite set from storage baba:main spawn[0]
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove storage baba:main spawn[0]
execute if data storage baba:main spawn[0] run function baba:board/interact/spawn
