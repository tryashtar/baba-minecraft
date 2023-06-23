execute store result score spawn baba run data get storage baba:main spawn[0].text
# when transforming into text, you transform into text of your own kind
scoreboard players operation spawn_text baba = @s sprite
execute if data storage baba:main transform{write:1b} run scoreboard players set spawn baba 397973
execute if data storage baba:main transform{write:1b} store result score spawn_text baba run data get storage baba:main transform.text
function baba:board/spawn
scoreboard players operation @e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1] facing = @s facing
scoreboard players operation @e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1] walk = @s walk
scoreboard players operation @e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1] frame = @s frame
tag @e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove storage baba:main spawn[0]
# only kill when all transformations are done, because killing removes scores
execute unless data storage baba:main spawn[0] run function baba:board/interact/remove
execute if data storage baba:main spawn[0] run function baba:board/interact/transform_loop