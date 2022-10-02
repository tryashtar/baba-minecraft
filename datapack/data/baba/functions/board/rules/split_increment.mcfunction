execute store result score used baba run data get storage baba:main used_text[0]
execute as @e[type=marker,tag=baba.object,tag=text_used] if score @s text_id = used baba run scoreboard players add @s text_used 1
data remove storage baba:main used_text[0]
execute if data storage baba:main used_text[0] run function baba:board/rules/split_increment
