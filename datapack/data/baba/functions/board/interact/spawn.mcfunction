execute store result score spawn baba run data get entity @s item.tag.has[0].text
execute store result score spawn_variant baba run data get entity @s item.tag.has[0].variant
# when spawning text, you spawn text of your own kind
scoreboard players operation spawn_text baba = @s sprite
function baba:board/spawn
tag @e[type=item_display,tag=spawn,distance=..0.1,limit=1] add assign
tag @e[type=item_display,tag=baba.object,tag=assign_move,distance=..1.5] add assign
scoreboard players operation @e[type=item_display,tag=spawn,distance=..0.1,limit=1] facing = @s facing
tag @e[type=item_display,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove entity @s item.tag.has[0]
execute if data entity @s item.tag.has[0] run function baba:board/interact/spawn
