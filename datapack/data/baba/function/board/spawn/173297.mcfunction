data merge entity @s {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",Tags:["baba","baba.object","spawn","assign","dirty"]}
item replace entity @s contents with potion[custom_data={baba:{text:"husk"}}]
scoreboard players set @s appearance 173297
scoreboard players set @s color 9463614
scoreboard players set @s sprite 173297
scoreboard players set @s z_layer 15
scoreboard players set @s facing 4
scoreboard players set @s walk 0
execute as @e[type=marker,tag=baba.conversion,scores={text=0},predicate=baba:match_score/sprite] run function baba:board/spawn_convert
