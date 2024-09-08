setblock ~ ~ ~ air
setblock ~ ~ ~ bamboo_wall_sign[facing=west]{front_text:{messages:['""','{"text":"Stop","clickEvent":{"action":"run_command","value":"/function baba:dev/board/stop"}}','""','""']}}

execute positioned ~1 ~1 ~-3 run function baba:editor/pack
fill ~ ~ ~-3 ~ ~ ~-1 air
setblock ~ ~ ~-3 decorated_pot{item:{id:"music_disc_wait",count:1}}
item modify block ~ ~ ~-3 container.0 {function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"replace",source:"level",target:"baba"}]}
tag @e[type=marker,tag=baba.space] add existing
scoreboard players set no_wall baba 1
execute positioned ~1 ~1 ~-3 run function baba:editor/load
scoreboard players set no_wall baba 0
execute at @e[type=marker,tag=baba.space,tag=!existing] run fill ~ ~ ~ ~ ~10 ~ air
tag @e[type=marker,tag=baba.space] remove existing
