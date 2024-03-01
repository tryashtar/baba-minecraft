data merge entity @s {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",Tags:["baba.object","spawn","assign","dirty","connector"],item:{id:"potion",components:{custom_data:{text:"fence"}}}}
scoreboard players set @s appearance 3297353
scoreboard players set @s color 9463614
scoreboard players set @s sprite 3297353
scoreboard players set @s z_layer 14
scoreboard players set @s facing 4
scoreboard players set @s walk 0
execute as @e[type=marker,tag=baba.conversion,scores={text=0},predicate=baba:same_sprite] run function baba:board/spawn_convert
