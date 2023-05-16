scoreboard players add packed baba 1
clone ~-1 ~-1 ~1 ~-1 ~-1 ~1 ~ ~ ~
function baba:editor/unpack/grid
execute store result score height baba run data get block ~-1 ~-1 ~1 RecordItem.tag.level
execute store result score width baba run data get block ~-1 ~-1 ~1 RecordItem.tag.level[0]
execute store result score saved baba run data get block ~-1 ~-1 ~1 RecordItem.tag.level[][]
execute store result score x baba run data get entity @s Pos[0]
execute store result score z baba run data get entity @s Pos[2]
tellraw @a [{"text":"Unpacked ","color":"yellow"},{"score":{"name":"width","objective":"baba"}},"x",{"score":{"name":"height","objective":"baba"}}," level with ",{"score":{"name":"saved","objective":"baba"}}," objects at (",{"score":{"name":"x","objective":"baba"}},",",{"score":{"name":"z","objective":"baba"}},")"]
function baba:dev/datafix/find_next
schedule function baba:dev/datafix/unpack_next 1t
