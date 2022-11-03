# anything stop, push, or pull is a blocker, unless it's swap
# if it's at the same float level as the moving object, it also may not be a blocker
tag @s[nbt={HandItems:[{tag:{properties:["stop"]}}]}] add blocker
tag @s[tag=!blocker,nbt={HandItems:[{tag:{properties:["push"]}}]}] add blocker
tag @s[tag=!blocker,nbt={HandItems:[{tag:{properties:["pull"]}}]}] add blocker
tag @s[tag=blocker,nbt={HandItems:[{tag:{properties:["swap"]}}]}] remove blocker
execute if score @s[tag=blocker] float_level = float baba run function baba:board/movement/check_blocker_override
