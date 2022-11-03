tag @s[nbt={HandItems:[{tag:{properties:["stop"]}}]}] add blocker
tag @s[tag=!blocker,nbt={HandItems:[{tag:{properties:["push"]}}]}] add blocker
tag @s[tag=!blocker,nbt={HandItems:[{tag:{properties:["pull"]}}]}] add blocker
execute if score @s[tag=blocker] float_level = float baba run function baba:board/movement/check_blocker_override
