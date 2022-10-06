data modify storage baba:main transform set from entity @s data.transforms[0]
execute if data storage baba:main transform{verb:"is"} run data modify storage baba:main spawn set from storage baba:main transform.text
execute if data storage baba:main transform{verb:"write"} run data modify storage baba:main spawn set value "text"
# when transforming into text, you transform into text of your own kind
execute if data storage baba:main transform{verb:"is",text:"text"} run data modify storage baba:main spawn_text set from entity @s data.sprite
execute if data storage baba:main transform{verb:"write"} run data modify storage baba:main spawn_text set from storage baba:main transform.text
function baba:board/spawn
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add transformed
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing = @s facing
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] walk = @s walk
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] frame = @s frame
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove entity @s data.transforms[0]
execute unless data entity @s data.transforms[0] run kill @s
execute if data entity @s data.transforms[0] run function baba:board/rules/transform
