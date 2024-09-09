scoreboard players add packed baba 1
execute rotated 90 -90 run function baba:editor/pack
setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ decorated_pot{item:{id:"music_disc_wait",count:1}}
item modify block ~ ~-2 ~ container.0 [{function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"replace",source:"level",target:"baba"}]},{function:"set_name",entity:"this",target:"item_name",name:{storage:"baba:main",nbt:"level.metadata.name",interpret:1b}}]
execute at @e[type=marker,tag=baba.storage] run fill ~ ~ ~ ~ ~ ~1 air
execute at @e[type=marker,tag=baba.storage] run setblock ~ ~ ~ decorated_pot{item:{id:"music_disc_wait",count:1}}
execute at @e[type=marker,tag=baba.storage] run setblock ~ ~ ~1 bamboo_wall_sign[facing=south]{front_text:{messages:['{"storage":"baba:main","nbt":"level.metadata.name","interpret":true}','""','""','""']}}
execute at @e[type=marker,tag=baba.storage] run item modify block ~ ~ ~ container.0 [{function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"replace",source:"level",target:"baba"}]},{function:"set_name",entity:"this",target:"item_name",name:{storage:"baba:main",nbt:"level.metadata.name",interpret:1b}}]
execute store result score height baba run data get storage baba:main level.tiles
execute store result score width baba run data get storage baba:main level.tiles[0]
execute store result score saved baba if data storage baba:main level.tiles[][][]
execute store result score x baba run data get entity @s Pos[0]
execute store result score z baba run data get entity @s Pos[2]
tellraw @a [{"text":"Packed ","color":"yellow"},{"score":{"name":"width","objective":"baba"}},"x",{"score":{"name":"height","objective":"baba"}}," level with ",{"score":{"name":"saved","objective":"baba"}}," objects at (",{"score":{"name":"x","objective":"baba"}},",",{"score":{"name":"z","objective":"baba"}},")"]
scoreboard players operation z baba += width baba
execute store result entity @s Pos[2] double 1 run scoreboard players get z baba
execute at @s run tp @s ~ ~ ~1
execute as @e[type=marker,tag=baba.storage] at @s run tp @s ~1 ~ ~
execute at @s unless block ~ ~-1 ~ #baba:editor_floor as @e[type=marker,tag=baba.storage] at @s run tp @s 0 ~1 ~
execute at @s unless block ~ ~-1 ~ #baba:editor_floor run tp @s ~30 ~ 50
execute at @s run forceload add ~ ~ ~17 ~32
forceload remove ~ ~ ~17 ~32
schedule function baba:dev/datafix/schedule_pack_next 1t
