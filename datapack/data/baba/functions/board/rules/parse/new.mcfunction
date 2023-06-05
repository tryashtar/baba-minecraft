tag @s remove first_word
data modify storage baba:main parsing set value {inverted:0b,state:{not:1b,noun:"subject"}}

function baba:board/rules/parse/consume
execute positioned ^ ^ ^1 if entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] run function baba:board/rules/parse/next
