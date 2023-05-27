data modify storage baba:main transform set from entity @s item.tag.transforms[0]
execute store result score spawn baba run data get storage baba:main transform.text
# when transforming into text, you transform into text of your own kind
scoreboard players operation spawn_text baba = @s sprite
execute if data storage baba:main transform{write:1b} run scoreboard players set spawn baba 349615
execute if data storage baba:main transform{write:1b} store result score spawn_text baba run data get storage baba:main transform.text
function baba:board/spawn
tag @e[type=item_display,tag=spawn,distance=..0.1,limit=1] add assign
scoreboard players operation @e[type=item_display,tag=spawn,distance=..0.1,limit=1] facing = @s facing
scoreboard players operation @e[type=item_display,tag=spawn,distance=..0.1,limit=1] walk = @s walk
scoreboard players operation @e[type=item_display,tag=spawn,distance=..0.1,limit=1] frame = @s frame
tag @e[type=item_display,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove entity @s item.tag.transforms[0]
# only kill when all transformations are done, because killing removes scores
execute unless data entity @s item.tag.transforms[0] run function baba:board/interact/remove
execute if data entity @s item.tag.transforms[0] run function baba:board/interact/transform
