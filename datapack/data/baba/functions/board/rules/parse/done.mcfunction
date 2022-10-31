tag @e[type=armor_stand,tag=baba.object,tag=pending_all_rules] remove pending_all_rules
execute store result score rule_count baba if data storage baba:main parsing.rules[][{subject:{},effect:{}}]
scoreboard players operation @e[type=armor_stand,tag=baba.object,tag=all_rules] text_using = rule_count baba
execute as @e[type=armor_stand,tag=baba.object,scores={text_using=1..}] run scoreboard players operation @s text_used += @s text_using
data modify storage baba:main rules append from storage baba:main parsing.rules[][{subject:{},effect:{}}]
execute if entity @s[tag=part.noun] if entity @e[type=armor_stand,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^-1 run function baba:board/rules/parse/new
