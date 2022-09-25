data modify storage baba:main text set value ['""']
data modify storage baba:main text append value '{"translate":"baba.text.wall.row0"}'
scoreboard players set last_column baba -1
execute positioned 19.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 19.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row0
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row0"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row1"}'
scoreboard players set last_column baba -1
execute positioned 18.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 18.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row1
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row1"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row2"}'
scoreboard players set last_column baba -1
execute positioned 17.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 17.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row2
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row2"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row3"}'
scoreboard players set last_column baba -1
execute positioned 16.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 16.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row3
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row3"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row4"}'
scoreboard players set last_column baba -1
execute positioned 15.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 15.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row4
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row4"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row5"}'
scoreboard players set last_column baba -1
execute positioned 14.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 14.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row5
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row5"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row6"}'
scoreboard players set last_column baba -1
execute positioned 13.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 13.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row6
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row6"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row7"}'
scoreboard players set last_column baba -1
execute positioned 12.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 12.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row7
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row7"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row8"}'
scoreboard players set last_column baba -1
execute positioned 11.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 11.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row8
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row8"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row9"}'
scoreboard players set last_column baba -1
execute positioned 10.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 10.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row9
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row9"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row10"}'
scoreboard players set last_column baba -1
execute positioned 9.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 9.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row10
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row10"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row11"}'
scoreboard players set last_column baba -1
execute positioned 8.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 8.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row11
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row11"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row12"}'
scoreboard players set last_column baba -1
execute positioned 7.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 7.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row12
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row12"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row13"}'
scoreboard players set last_column baba -1
execute positioned 6.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 6.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row13
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row13"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row14"}'
scoreboard players set last_column baba -1
execute positioned 5.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 5.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row14
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row14"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row15"}'
scoreboard players set last_column baba -1
execute positioned 4.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 4.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row15
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row15"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row16"}'
scoreboard players set last_column baba -1
execute positioned 3.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 3.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row16
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row16"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row17"}'
scoreboard players set last_column baba -1
execute positioned 2.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 2.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row17
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row17"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row18"}'
scoreboard players set last_column baba -1
execute positioned 1.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 1.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row18
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row18"}'
data modify storage baba:main text append value '{"translate":"baba.row_end"}'
data modify storage baba:main text append value '{"translate":"baba.text.wall.row19"}'
scoreboard players set last_column baba -1
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,nbt={data:{sprite:"baba"}}] at @s align xyz run tp @s ~0.5 ~ ~0.501
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=baba.tile,dx=0.5,dy=1,dz=40,sort=nearest] at @s run function baba:display/check_tile/row19
scoreboard players set column baba 39
execute if score column baba > last_column baba run function baba:display/add_empty
data modify storage baba:main text append value '{"translate":"baba.text.wall.row19"}'
function baba:display/update_anim
