# anything stop, push, or pull is a blocker, unless it's swap
# if it's at the same float level as the moving object, it also may not be a blocker
tag @s[tag=prop.stop] add blocker
tag @s[tag=!blocker,tag=prop.push] add blocker
tag @s[tag=!blocker,tag=prop.pull] add blocker
tag @s[tag=blocker,tag=prop.swap] remove blocker
execute if score @s[tag=blocker] float_level = float baba run function baba:board/movement/check_blocker_override
