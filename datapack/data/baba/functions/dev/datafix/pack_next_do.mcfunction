scoreboard players add packed baba 1
function baba:editor/pack
fill ~-2 ~-1 ~ ~-1 ~ ~2 air
setblock ~-1 ~-1 ~1 jukebox
setblock ~-1 ~-1 ~ command_block[facing=west]{Command:"execute positioned ~1 ~1 ~ run function baba:editor/unpack"}
setblock ~-1 ~ ~ stone_button[face=floor,facing=east]
setblock ~-2 ~-1 ~ oak_wall_sign[facing=west]{Color:"black",GlowingText:1b,Text2:'"unpack"'}
setblock ~-1 ~-1 ~2 command_block[facing=west]{Command:"execute positioned ~1 ~1 ~-2 run function baba:editor/pack"}
setblock ~-1 ~ ~2 stone_button[face=floor,facing=east]
setblock ~-2 ~-1 ~2 oak_wall_sign[facing=west]{Color:"black",GlowingText:1b,Text2:'"pack"'}
data modify block ~-1 ~-1 ~1 {} merge from entity @e[type=item,tag=level,distance=..0.1,limit=1] Item.tag.BlockEntityTag
kill @e[type=item,tag=level,distance=..0.1,limit=1]
execute store result score height baba if data block ~-1 ~-1 ~1 RecordItem.tag.level[]
execute store result score width baba if data block ~-1 ~-1 ~1 RecordItem.tag.level[0][]
execute store result score saved baba if data block ~-1 ~-1 ~1 RecordItem.tag.level[][][]
execute store result score x baba run data get entity @s Pos[0]
execute store result score z baba run data get entity @s Pos[2]
tellraw @a [{"text":"Packed ","color":"yellow"},{"score":{"name":"width","objective":"baba"}},"x",{"score":{"name":"height","objective":"baba"}}," level with ",{"score":{"name":"saved","objective":"baba"}}," objects at (",{"score":{"name":"x","objective":"baba"}},",",{"score":{"name":"z","objective":"baba"}},")"]
function baba:dev/datafix/find_next
schedule function baba:dev/datafix/pack_next 1t
