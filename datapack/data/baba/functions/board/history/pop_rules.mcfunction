data modify entity @s {} merge from storage baba:main current_rules[0].nbt
execute store result score @s sprite run data get storage baba:main current_rules[0].subject
execute store result score @s text run data get storage baba:main current_rules[0].effect
execute store result score @s life run data get storage baba:main current_rules[0].verb
execute store result score @s text_disabled run data get storage baba:main current_rules[0].disabled

data remove storage baba:main current_rules[0]
execute if data storage baba:main current_rules[0] summon marker run function baba:board/history/pop_rules
