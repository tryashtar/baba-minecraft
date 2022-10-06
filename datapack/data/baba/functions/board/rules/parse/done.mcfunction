execute as @e[type=marker,tag=baba.object,scores={text_using=1..}] run scoreboard players operation @s text_used += @s text_using
data modify storage baba:main rules append from storage baba:main parsing.rules[][{subject:{},effect:{}}]
