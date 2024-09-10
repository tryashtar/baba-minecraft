scoreboard players add packed baba 1
data modify storage baba:main level set from block ~ ~-2 ~ item.components."minecraft:custom_data".baba
execute store result score height baba run data get storage baba:main level.tiles
execute store result score width baba run data get storage baba:main level.tiles[0]
execute store result score saved baba if data storage baba:main level.tiles[][][]
execute rotated 90 -90 run function baba:editor/unpack {facing:"west",meta:"~-1 ~-1 ~2",name:"~-1 ~-1 ~1"}
setblock ~-1 ~-1 ~3 air
setblock ~-1 ~-1 ~3 bamboo_wall_sign[facing=west]{front_text:{messages:['""','{"text":"Play","clickEvent":{"action":"run_command","value":"/execute rotated 90 -90 align y positioned ~ ~0.01 ~ run function baba:dev/board/play {facing:\\"west\\",setup:\\"rotated 90 -90 align y positioned ~ ~0.01 ~\\",start:\\"^-3 ^1 ^1\\",storage:\\"^-3 ^ ^\\",meta:\\"^-1 ^ ^\\",name:\\"^-2 ^ ^\\",load_meta:\\"^2 ^-1 ^-1\\",load_name:\\"^1 ^-1 ^-1\\"}"}}','""','""']}}
execute store result score x baba run data get entity @s Pos[0]
execute store result score z baba run data get entity @s Pos[2]
tellraw @a [{"text":"Unpacked ","color":"yellow"},{"score":{"name":"width","objective":"baba"}},"x",{"score":{"name":"height","objective":"baba"}}," level with ",{"score":{"name":"saved","objective":"baba"}}," objects at (",{"score":{"name":"x","objective":"baba"}},",",{"score":{"name":"z","objective":"baba"}},")"]
scoreboard players operation z baba += width baba
execute store result entity @s Pos[2] double 1 run scoreboard players get z baba
execute at @s run tp @s ~ ~ ~1
execute at @s unless block ~ ~-1 ~ #baba:editor_floor run tp @s ~30 ~ 50
execute at @s run forceload add ~ ~ ~17 ~32
forceload remove ~ ~ ~17 ~32
schedule function baba:dev/datafix/schedule_unpack_next 1t
