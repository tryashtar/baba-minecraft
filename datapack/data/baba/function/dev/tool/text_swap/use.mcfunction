data modify storage baba:main extra set value 0b
data modify storage baba:main extra set from block ~ ~ ~ Items[0].components."minecraft:custom_data".baba
data modify storage baba:main extra set from block ~ ~ ~ bees[0].entity_data.baba
function baba:dev/tool/text_swap/convert
execute unless data storage baba:main {extra:0b} run data modify block ~ ~ ~ Items set value [{id:"book",count:1}]
execute unless data storage baba:main {extra:0b} run data modify block ~ ~ ~ bees set value [{entity_data:{},ticks_in_hive:0,min_ticks_in_hive:0}]
execute unless data storage baba:main {extra:0b} run data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".baba set from storage baba:main extra
execute unless data storage baba:main {extra:0b} run data modify block ~ ~ ~ bees[0].entity_data.baba set from storage baba:main extra
