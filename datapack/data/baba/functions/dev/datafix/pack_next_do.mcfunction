scoreboard players add packed baba 1
function baba:editor/pack
fill ~-2 ~-1 ~ ~-1 ~ ~2 air
setblock ~-1 ~-1 ~1 jukebox
setblock ~-1 ~-1 ~ oak_wall_sign[facing=west]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"/execute unless block ~1 ~1 ~ jukebox run tellraw @p {\\"text\\":\\"Place a level jukebox above the sign to unpack\\",\\"color\\":\\"red\\"}"}}','{"text":"unpack","clickEvent":{"action":"run_command","value":"/execute positioned ~1 ~1 ~ run function baba:editor/unpack"}}','""','""']}}
setblock ~-1 ~-1 ~2 oak_wall_sign[facing=west]{front_text:{color:"black",has_glowing_text:1b,messages:['""','{"text":"pack","clickEvent":{"action":"run_command","value":"/execute positioned ~1 ~1 ~-2 run function baba:editor/pack"}}','{"text":"","clickEvent":{"action":"run_command","value":"/tp @e[type=item,distance=..3] @p"}}','""']}}
data modify block ~-1 ~-1 ~1 {} merge from entity @e[type=item,tag=level,distance=..0.1,limit=1] Item.tag.BlockEntityTag
kill @e[type=item,tag=level,distance=..0.1,limit=1]
execute store result score height baba run data get block ~-1 ~-1 ~1 RecordItem.tag.level
execute store result score width baba run data get block ~-1 ~-1 ~1 RecordItem.tag.level[0]
execute store result score saved baba if data block ~-1 ~-1 ~1 RecordItem.tag.level[][]
execute store result score x baba run data get entity @s Pos[0]
execute store result score z baba run data get entity @s Pos[2]
tellraw @a [{"text":"Packed ","color":"yellow"},{"score":{"name":"width","objective":"baba"}},"x",{"score":{"name":"height","objective":"baba"}}," level with ",{"score":{"name":"saved","objective":"baba"}}," objects at (",{"score":{"name":"x","objective":"baba"}},",",{"score":{"name":"z","objective":"baba"}},")"]
function baba:dev/datafix/find_next
schedule function baba:dev/datafix/pack_next 1t
