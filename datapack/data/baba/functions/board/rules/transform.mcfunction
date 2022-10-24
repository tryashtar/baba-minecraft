data modify storage baba:main transform set from entity @s data.transforms[0]
execute store result score spawn baba run data get storage baba:main transform.text
# when transforming into text, you transform into text of your own kind
execute store result score spawn_text baba run data get entity @s data.sprite
execute if data storage baba:main transform{verb:45138} run scoreboard players set spawn baba 30442
execute if data storage baba:main transform{verb:45138} store result score spawn_text baba run data get storage baba:main transform.text
function baba:board/spawn
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add transformed
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing = @s facing
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] walk = @s walk
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] frame = @s frame
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove entity @s data.transforms[0]
# only kill when all transformations are done, because killing removes scores
execute unless data entity @s data.transforms[0] run kill @s
execute if data entity @s data.transforms[0] run function baba:board/rules/transform
