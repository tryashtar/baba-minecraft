execute as @e[type=marker,tag=baba.board,distance=..0.01,limit=1] run function baba:board/wipe
fill ~-1 ~-1 ~ ~-1 ~-1 ~1 air
setblock ~-1 ~-1 ~ decorated_pot{item:{id:"paper",count:1}}
item modify block ~-1 ~-1 ~ container.0 [{function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"replace",source:"level",target:"baba.level"}]},{function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"replace",source:"moves",target:"baba.moves"}]}]
setblock ~-1 ~-1 ~1 bamboo_wall_sign[facing=west]{front_text:{messages:['""','{"text":"Restart","clickEvent":{"action":"run_command","value":"/function baba:dev/tests/restart"}}','""','""']}}
scoreboard players set no_wall baba 1
execute rotated 90 -90 run function baba:editor/load
scoreboard players set no_wall baba 0
data modify entity @e[type=marker,tag=baba.board,distance=..0.01,limit=1] data.moves set from storage baba:main moves
