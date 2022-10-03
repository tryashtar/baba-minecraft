data modify storage baba:main transform set from entity @s data.transforms[0]
summon marker ~ ~ ~ {Tags:["baba.object","spawn","transformed"]}
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing = @s facing
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] walk = @s walk
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] frame = @s frame
execute if data storage baba:main transform{verb:"is"} run data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.sprite set from storage baba:main transform.sprite
# when transforming into text, you transform into text of your own kind
execute if data storage baba:main transform{verb:"is",sprite:"text"} run data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.text set from entity @s data.sprite
execute if data storage baba:main transform{verb:"write"} run data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.sprite set value "text"
execute if data storage baba:main transform{verb:"write"} run data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.text set from storage baba:main transform.text
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove entity @s data.transforms[0]
execute unless data entity @s data.transforms[0] run kill @s
execute if data entity @s data.transforms[0] run function baba:board/rules/transform
