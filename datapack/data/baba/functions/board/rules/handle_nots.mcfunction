tp @s ~ ~ ~
scoreboard players add inverted baba 1
execute if score inverted baba matches 2.. run scoreboard players set inverted baba 0
execute positioned ^ ^ ^1 if entity @e[type=marker,tag=baba.object,tag=part.operator,distance=..0.1,nbt={data:{text:"not"}}] run function baba:board/rules/handle_nots
