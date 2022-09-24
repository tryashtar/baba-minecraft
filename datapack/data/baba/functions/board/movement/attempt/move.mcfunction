tag @s remove move_success
execute if entity @s[nbt={data:{facing:1}}] rotated 270 0 run function baba:board/movement/try_move
execute if entity @s[nbt={data:{facing:2}}] rotated 90 0 run function baba:board/movement/try_move
execute if entity @s[nbt={data:{facing:3}}] rotated 180 0 run function baba:board/movement/try_move
execute if entity @s[nbt={data:{facing:4}}] rotated 0 0 run function baba:board/movement/try_move
execute if entity @s[tag=!move_success] run function baba:board/movement/turn_around
