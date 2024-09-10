$data modify block ~ ~ ~ front_text.messages[1] set value '{"text":"Stop","clickEvent":{"action":"run_command","value":"/execute $(setup) run function baba:dev/board/stop {facing:\\"$(facing)\\",setup:\\"$(setup)\\",start:\\"$(start)\\",storage:\\"$(storage)\\",meta:\\"$(meta)\\",name:\\"$(name)\\",load_meta:\\"$(load_meta)\\",load_name:\\"$(load_name)\\"}"}}'

$execute positioned $(start) run function baba:editor/pack {meta:"$(load_meta)",name:"$(load_name)"}
$setblock $(meta) air
$setblock $(name) air
$setblock $(storage) decorated_pot{item:{id:"music_disc_wait",count:1}}
$item modify block $(storage) container.0 {function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"replace",source:"level",target:"baba"}]}
tag @e[type=marker,tag=baba.space] add existing
scoreboard players set no_wall baba 1
$execute positioned $(start) run function baba:editor/load
scoreboard players set no_wall baba 0
execute positioned as @e[type=marker,tag=baba.space,tag=!existing] run fill ~ ~ ~ ^ ^ ^10 air
tag @e[type=marker,tag=baba.space] remove existing
