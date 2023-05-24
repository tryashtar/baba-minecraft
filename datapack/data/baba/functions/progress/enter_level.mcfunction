data modify storage baba:main link set from entity @s item.tag.level_data.link
execute if data storage baba:main {link:"up"} run data remove storage baba:main level_stack[-1]
execute unless data storage baba:main {link:"up"} run data modify storage baba:main level_stack append from entity @s item.tag.level_data.link
function baba:progress/load_top
