data modify storage baba:main normal_rules set value []
data modify storage baba:main normal_rules append from storage baba:main rules[{effect:{inverted:0b}}]
execute if data storage baba:main normal_rules[0] run function baba:board/rules/disabling_loop
execute as @e[type=marker,tag=baba.object,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add disabled
