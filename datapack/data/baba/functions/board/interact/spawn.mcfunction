execute store result score spawn baba run data get entity @s HandItems[0].tag.has[0]
# when spawning text, you spawn text of your own kind
scoreboard players operation spawn_text baba = @s sprite
function baba:board/spawn
tag @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] add transformed
scoreboard players operation @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] facing = @s facing
tag @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove entity @s HandItems[0].tag.has[0]
execute if data entity @s HandItems[0].tag.has[0] run function baba:board/interact/has
