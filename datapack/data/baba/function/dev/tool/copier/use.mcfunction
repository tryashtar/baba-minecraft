loot spawn ~ ~ ~ mine ~ ~-1 ~
execute if data block ~ ~-1 ~ Items[0] run item modify entity @e[type=item,distance=..1,sort=nearest,limit=1] contents {function:"set_components",components:{container:[{slot:0,item:{id:"tnt",count:1}}]}}
execute if data block ~ ~-1 ~ Items[0] run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.components."minecraft:container"[0].item set from block ~ ~-1 ~ Items[0]
execute if data block ~ ~-1 ~ Items[0] run item modify entity @e[type=item,distance=..1,sort=nearest,limit=1] contents [{function:"set_lore",mode:"replace_all",lore:[{text:"(with extra data)",color:"gray",italic:0b}]},{function:"set_components",components:{enchantment_glint_override:1b}}]
execute if data block ~ ~-1 ~ bees[0] run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.components."minecraft:bees" set from block ~ ~-1 ~ bees
execute if data block ~ ~-1 ~ bees[0] run item modify entity @e[type=item,distance=..1,sort=nearest,limit=1] contents [{function:"set_lore",mode:"replace_all",lore:[{text:"(with extra data)",color:"gray",italic:0b}]},{function:"set_components",components:{enchantment_glint_override:1b}}]
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] PickupDelay set value 0s
tp @e[type=item,distance=..1,sort=nearest,limit=1] @p
