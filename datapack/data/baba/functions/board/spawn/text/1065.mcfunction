data merge entity @s {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",Tags:["baba.object","spawn","assign","dirty","not_all","reparse","is_text","part.noun","special"],item:{id:"potion",Count:1b,tag:{text:"all"}}}
scoreboard players set @s appearance 397973
scoreboard players set @s color 16777215
scoreboard players set @s inactive_color 7566195
scoreboard players set @s sprite 397973
scoreboard players set @s text 1065
scoreboard players set @s z_layer 20
scoreboard players operation @s text_id > @e[type=item_display,tag=baba.object,tag=is_text] text_id
scoreboard players add @s text_id 1
scoreboard players set @s facing 4
scoreboard players set @s walk 0
execute as @e[type=marker,tag=baba.conversion,scores={sprite=397973},predicate=baba:same_text] run function baba:board/spawn_convert
