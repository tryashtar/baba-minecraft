data merge entity @s {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",Tags:["baba.object","spawn","assign","dirty"],item:{id:"minecraft:potion",Count:1b,tag:{text:"statue"}}}
scoreboard players set @s appearance -2
scoreboard players set @s color 7566195
scoreboard players set @s sprite -2
scoreboard players set @s z_layer 17
scoreboard players set @s facing 4
scoreboard players set @s walk 0
execute as @e[type=marker,tag=baba.conversion,scores={text=0},predicate=baba:same_sprite] run function baba:board/spawn_convert
