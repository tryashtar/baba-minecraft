$data modify block ~ ~ ~ front_text.messages[1] set value '{"text":"Play","clickEvent":{"action":"run_command","value":"/execute rotated $(rot) run function baba:dev/board/play {facing:\\"$(facing)\\",rot:\\"$(rot)\\",start:\\"$(start)\\",storage:\\"$(storage)\\",meta:\\"$(meta)\\",name:\\"$(name)\\",load_meta:\\"$(load_meta)\\",load_name:\\"$(load_name)\\"}"}}'

$execute positioned $(start) align xyz positioned ~0.5 ~ ~0.5 as @e[type=marker,tag=baba.board,distance=..0.01,limit=1] run function baba:board/wipe
$data modify storage baba:main level set from block $(storage) item.components."minecraft:custom_data".baba
$setblock $(storage) air
$execute positioned $(start) run function baba:editor/unpack {facing:"$(facing)",meta:"$(load_meta)",name:"$(load_name)"}
