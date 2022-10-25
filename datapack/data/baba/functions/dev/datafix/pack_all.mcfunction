tellraw @a {"text":"Packing all levels...","color":"green"}
scoreboard players set packed baba 0
kill @e[type=marker,tag=baba.datafixer]
schedule clear baba:dev/datafix/pack_next
summon marker 0 1 50 {Tags:["baba.datafixer"]}
schedule function baba:dev/datafix/pack_next 1t
