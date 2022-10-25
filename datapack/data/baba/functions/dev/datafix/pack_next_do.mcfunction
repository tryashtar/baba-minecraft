scoreboard players add packed baba 1
function baba:editor/pack
setblock ~-1 ~-1 ~1 air
setblock ~-1 ~-1 ~1 jukebox
data modify block ~-1 ~-1 ~1 {} merge from entity @e[type=item,tag=level,distance=..0.1,limit=1] Item.tag.BlockEntityTag
kill @e[type=item,tag=level,distance=..0.1,limit=1]
execute store result score width baba run data get block ~-1 ~-1 ~1 RecordItem.tag.level[0]
execute store result score height baba run data get block ~-1 ~-1 ~1 RecordItem.tag.level
execute store result score saved baba if data block ~-1 ~-1 ~1 RecordItem.tag.level[][][]
execute store result score x baba run data get entity @s Pos[0]
execute store result score z baba run data get entity @s Pos[2]
tellraw @a [{"text":"Packed ","color":"yellow"},{"score":{"name":"width","objective":"baba"}},"x",{"score":{"name":"height","objective":"baba"}}," level with ",{"score":{"name":"saved","objective":"baba"}}," objects at (",{"score":{"name":"x","objective":"baba"}},",",{"score":{"name":"z","objective":"baba"}},")"]
function baba:dev/datafix/find_next
schedule function baba:dev/datafix/pack_next 1t
