tag @s[nbt={HandItems:[{tag:{properties:["weak"]}}]}] remove blocker
execute if score open baba matches 1 run tag @s[tag=blocker,nbt={HandItems:[{tag:{properties:["shut"]}}]}] remove blocker
execute if score open baba matches 2 run tag @s[tag=blocker,nbt={HandItems:[{tag:{properties:["open"]}}]}] remove blocker
