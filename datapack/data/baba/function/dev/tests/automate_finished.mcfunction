execute if score win baba matches 1 unless data entity @s data.moves[0] run tellraw @a [{"selector":"@s","color":"green"},": passed!"]
execute if score win baba matches 1 if data entity @s data.moves[0] run tellraw @a [{"selector":"@s","color":"yellow"},": won early!"]
execute if score win baba matches 0 run tellraw @a [{"selector":"@s","color":"red"},": failed!"]
scoreboard players set @a[scores={win=1..}] win 0
