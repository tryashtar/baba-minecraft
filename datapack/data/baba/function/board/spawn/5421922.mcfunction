data merge entity @s {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",Tags:["baba","baba.object","spawn","assign","dirty"]}
item replace entity @s contents with potion[custom_data={baba:{text:"jelly"}}]
scoreboard players set @s appearance 5421922
scoreboard players set @s color 8636645
scoreboard players set @s sprite 5421922
scoreboard players set @s z_layer 17
scoreboard players set @s facing 4
scoreboard players set @s walk 0
execute as @e[type=marker,tag=baba.conversion,scores={text=0},predicate=baba:match_score/sprite] run function baba:board/spawn_convert
