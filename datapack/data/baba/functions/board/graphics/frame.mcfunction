execute if entity @s[nbt={data:{frame:3}}] run data modify entity @s data.frame set value -1
execute if entity @s[nbt={data:{frame:2}}] run data modify entity @s data.frame set value 3
execute if entity @s[nbt={data:{frame:1}}] run data modify entity @s data.frame set value 2
execute if entity @s[nbt={data:{frame:0}}] run data modify entity @s data.frame set value 1
execute if entity @s[nbt={data:{frame:-1}}] run data modify entity @s data.frame set value 0
