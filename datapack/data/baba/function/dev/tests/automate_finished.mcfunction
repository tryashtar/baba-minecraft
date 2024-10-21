execute if score win baba matches 1 unless data entity @s data.moves[0] run tellraw @a [{"selector":"@s","color":"green"},": passed!"]
execute if score win baba matches 1 unless data entity @s data.moves[0] run setblock ~-1 ~-1 ~2 copper_bulb[lit=true]
execute if score win baba matches 1 if data entity @s data.moves[0] run tellraw @a [{"selector":"@s","color":"yellow"},": won early!"]
execute if score win baba matches 1 if data entity @s data.moves[0] run setblock ~-1 ~-1 ~2 copper_bulb[lit=false]
execute if score win baba matches 0 run tellraw @a [{"selector":"@s","color":"red"},": failed!"]
execute if score win baba matches 0 run setblock ~-1 ~-1 ~2 copper_bulb[lit=false]
scoreboard players set @a[scores={win=1..}] win 0
