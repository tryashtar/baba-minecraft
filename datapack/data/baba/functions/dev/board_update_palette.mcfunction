execute store result storage baba:main noun int 1 run scoreboard players get @s sprite

data modify storage baba:main check_noun set from storage baba:main words.noun
execute store result score length baba run data get storage baba:main check_noun
execute store result score changed baba run data modify storage baba:main check_noun[] set from storage baba:main noun
execute if score changed baba >= length baba unless score @s sprite matches 397973 run data modify storage baba:main words.noun append from storage baba:main noun
