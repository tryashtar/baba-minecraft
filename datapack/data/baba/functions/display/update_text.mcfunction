data modify storage baba:main text set value ['""']
data modify storage baba:main text append value '{"translate":"baba.tile.row0","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 19.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 19.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 19.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row0
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row0","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row1","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 18.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 18.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 18.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row1
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row1","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row2","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 17.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 17.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 17.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row2
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row2","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row3","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 16.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 16.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 16.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row3
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row3","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row4","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 15.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 15.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 15.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row4
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row4","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row5","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 14.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 14.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 14.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row5
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row5","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row6","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 13.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 13.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 13.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row6
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row6","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row7","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 12.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 12.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 12.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row7
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row7","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row8","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 11.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 11.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 11.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row8
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row8","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row9","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 10.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 10.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 10.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row9
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row9","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row10","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 9.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 9.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 9.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row10
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row10","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row11","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 8.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 8.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 8.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row11
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row11","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row12","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 7.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 7.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 7.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row12
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row12","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row13","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 6.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 6.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 6.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row13
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row13","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row14","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 5.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 5.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 5.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row14
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row14","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row15","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 4.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 4.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 4.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row15
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row15","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row16","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 3.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 3.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 3.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row16
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row16","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row17","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 2.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 2.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 2.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row17
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row17","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row18","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 1.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 1.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 1.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row18
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row18","color":"black"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.tile.row19","color":"black"}'
scoreboard players set last_column baba -1
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,nbt={data:{properties:["select"]}}] at @s align xyz run tp @s ~0.5 ~ ~0.502
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.object,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row19
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.tile.row19","color":"black"}'
function baba:display/update_anim
