data modify block ~ ~ ~ front_text.messages[1] set value '{"text":"Play","clickEvent":{"action":"run_command","value":"/function baba:dev/board/play"}}'

execute positioned ~1 ~1 ~-3 align xyz positioned ~0.5 ~ ~0.5 as @e[type=marker,tag=baba.board,distance=..0.01,limit=1] run function baba:board/wipe
data modify storage baba:main level set from block ~ ~ ~-3 item.components."minecraft:custom_data".baba
setblock ~ ~ ~-3 air
execute positioned ~1 ~1 ~-3 rotated 90 -90 run function baba:editor/unpack
