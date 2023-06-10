# moving objects can move through weak objects, even if they are stop
# shut/open objects can move through objects of their corresponding kind
tag @s[tag=prop.weak] remove blocker
execute if score open baba matches 1 run tag @s[tag=prop.shut] remove blocker
execute if score open baba matches 2 run tag @s[tag=prop.open] remove blocker
