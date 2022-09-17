data modify storage baba:main consume set value []
data modify storage baba:main consume append from storage baba:main properties[{property:"stop"}]
scoreboard players set has_property baba 0
execute if data storage baba:main consume[0] positioned ^ ^ ^1 if data block ~ ~ ~ RecordItem.tag.sprite run function baba:board/check_property
execute if score has_property baba matches 0 run clone ~ ~ ~ ~ ~ ~ ^ ^ ^1
execute if score has_property baba matches 0 run data modify block ~ ~ ~ RecordItem.tag set value {}
