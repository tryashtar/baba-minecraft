data modify storage baba:main tag set string block ~ ~-1 ~ Items[0].tag.extra.tags[0] 0 6
execute if data storage baba:main {tag:"style."} run data remove block ~ ~-1 ~ Items[0].tag.extra.tags[0]
data modify block ~ ~-1 ~ Items[0].tag.extra.tags prepend from block ~ ~-1 ~ Items[0].tag.extra.tags[-1]
data remove block ~ ~-1 ~ Items[0].tag.extra.tags[-1]
scoreboard players remove loop baba 1
execute if score loop baba matches 1.. run function baba:dev/tile_editor/actions/remove_style
