# anything stop, push, or pull is a blocker, unless it's swap
# if it's weak and at the same float level as the moving object, it also may not be a blocker
tag @s[tag=prop.stop] add blocker
tag @s[tag=prop.push] add blocker
tag @s[tag=prop.pull] add blocker
tag @s[tag=prop.swap] remove blocker
tag @s[tag=blocker,tag=prop.weak,predicate=baba:same_float_level] remove blocker
