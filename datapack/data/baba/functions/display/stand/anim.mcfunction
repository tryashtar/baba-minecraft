execute if score anim baba matches 0 as @e[type=armor_stand,tag=baba.object] run data modify entity @s ArmorItems[3].id set value "minecraft:potion"
execute if score anim baba matches 1 as @e[type=armor_stand,tag=baba.object] run data modify entity @s ArmorItems[3].id set value "minecraft:splash_potion"
execute if score anim baba matches 2 as @e[type=armor_stand,tag=baba.object] run data modify entity @s ArmorItems[3].id set value "minecraft:lingering_potion"
