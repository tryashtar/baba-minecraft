data merge entity @s {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",Tags:["baba.object","spawn","assign","dirty"],item:{id:"minecraft:potion",Count:1b,tag:{text:"blossom"}}}
scoreboard players set @s appearance 955387723
scoreboard players set @s color 16777215
scoreboard players set @s sprite 955387723
scoreboard players set @s z_layer 20
scoreboard players set @s facing 4
scoreboard players set @s walk 0
execute as @e[type=marker,tag=baba.conversion,scores={text=0},predicate=baba:same_sprite] run function baba:board/spawn_convert
