data merge entity @s {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",transformation:{left_rotation:[0.5f,0.5f,0.5f,0.5f],translation:[0f,0f,0f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["baba","baba.object","spawn","active","assign","dirty"]}
item replace entity @s contents with potion[custom_data={baba:{text:"tile"}}]
scoreboard players set @s appearance 400550
scoreboard players set @s color 1382431
scoreboard players set @s sprite 400550
scoreboard players set @s z_layer 4
scoreboard players set @s facing 4
scoreboard players set @s walk 0
execute as @e[type=marker,tag=baba.conversion,tag=active,scores={text=0},predicate=baba:match_score/sprite,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run function baba:board/spawn_convert
