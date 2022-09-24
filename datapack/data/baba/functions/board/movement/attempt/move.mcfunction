tag @s add self
tag @s remove move_success
function if entity @s[nbt={data:{facing:1}}] rotated 270 0 baba:board/movement/try_move
function if entity @s[nbt={data:{facing:2}}] rotated 90 0 baba:board/movement/try_move
function if entity @s[nbt={data:{facing:3}}] rotated 180 0 baba:board/movement/try_move
function if entity @s[nbt={data:{facing:4}}] rotated 0 0 baba:board/movement/try_move
execute if entity @s[tag=!move_success] run function baba:board/movement/turn_around
tag @s remove self
