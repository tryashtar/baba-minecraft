scoreboard players set push_success baba 1
execute if entity @s[nbt={data:{walk:3}}] run data modify entity @s data.walk set value -1
execute if entity @s[nbt={data:{walk:2}}] run data modify entity @s data.walk set value 3
execute if entity @s[nbt={data:{walk:1}}] run data modify entity @s data.walk set value 2
execute if entity @s[nbt={data:{walk:0}}] run data modify entity @s data.walk set value 1
execute if entity @s[nbt={data:{walk:-1}}] run data modify entity @s data.walk set value 0
tp @s ^ ^ ^1
tag @s add move_handled
execute if score facing baba matches 1.. store result entity @s data.facing int 1 run scoreboard players get facing baba
