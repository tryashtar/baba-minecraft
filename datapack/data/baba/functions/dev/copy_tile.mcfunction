loot spawn ~ ~ ~ mine ~ ~-1 ~
execute if data block ~ ~-1 ~ Items[0] run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.components."minecraft:block_entity_data".Items set from block ~ ~-1 ~ Items
execute if data block ~ ~-1 ~ Bees[0] run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.components.bees set from block ~ ~-1 ~ Bees
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] PickupDelay set value 0s
tp @e[type=item,distance=..1,sort=nearest,limit=1] @p
kill @s
