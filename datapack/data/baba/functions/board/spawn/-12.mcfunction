data merge entity @s {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",Tags:["baba.object","spawn","assign","dirty","connector"],item:{id:"minecraft:potion",Count:1b,tag:{text:"rubble"}}}
scoreboard players set @s appearance -12
scoreboard players set @s color 5259044
scoreboard players set @s sprite -12
scoreboard players set @s z_layer 8
scoreboard players set @s facing 4
scoreboard players set @s walk 0
execute as @e[type=marker,tag=baba.conversion,scores={text=0},predicate=baba:same_sprite] run function baba:board/spawn_convert
