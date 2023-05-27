loot spawn ~ ~ ~ mine ~ ~-1 ~
execute if data block ~ ~-1 ~ Items[0] run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockEntityTag.Items set from block ~ ~-1 ~ Items
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] PickupDelay set value 0s
tp @e[type=item,distance=..1,sort=nearest,limit=1] @p
kill @s
