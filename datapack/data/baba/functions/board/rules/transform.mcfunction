kill @s
data modify storage baba:main transform set from entity @s data.transforms[0]
summon marker ~ ~ ~ {Tags:["baba.object","spawn","transformed"]}
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing = @s facing
data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.sprite set from storage baba:main transform
# when transforming into text, you transform into text of your own kind
execute if data storage baba:main {transform:"text"} run data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.text set from entity @s data.sprite
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove entity @s data.transforms[0]
execute if data entity @s data.transforms[0] run function baba:board/rules/transform
