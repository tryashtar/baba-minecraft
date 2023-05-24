scoreboard players add packed baba 1
function baba:editor/pack
fill ~-1 ~-1 ~ ~-1 ~-1 ~2 air
setblock ~-1 ~-1 ~ oak_wall_sign[facing=west]{front_text:{color:"yellow",has_glowing_text:1b,messages:['""','{"text":"unpack","clickEvent":{"action":"run_command","value":"/function baba:dev/datafix/unpack_sign"}}','""','""']}}
setblock ~-1 ~-1 ~1 oak_wall_sign[facing=west]{front_text:{color:"yellow",has_glowing_text:1b,messages:['""','{"text":"pack","clickEvent":{"action":"run_command","value":"/function baba:dev/datafix/pack_sign"}}','""','""']}}
setblock ~-1 ~-1 ~2 jukebox{RecordItem:{id:"minecraft:tnt",Count:1b}}
data modify block ~-1 ~-1 ~2 RecordItem.tag set from storage baba:main level
execute at @e[type=marker,tag=baba.storage] run setblock ~ ~ ~ air
execute at @e[type=marker,tag=baba.storage] run setblock ~ ~ ~ jukebox{RecordItem:{id:"minecraft:tnt",Count:1b}}
execute at @e[type=marker,tag=baba.storage] run data modify block ~ ~ ~ RecordItem.tag set from storage baba:main level
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
