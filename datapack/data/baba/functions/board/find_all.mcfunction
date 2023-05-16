# any objects or text are added to the global palette, which is what 'X is all' creates
# 'text' and 'level' are excluded
scoreboard players set sprite baba 0
scoreboard players operation sprite baba > @e[type=item_display,tag=baba.object,tag=!found] sprite
scoreboard players operation sprite baba > @e[type=item_display,tag=baba.object,tag=part.noun,tag=!special,tag=!found_text] text
data modify storage baba:main sprite set value {inverted:0b}
execute store result storage baba:main sprite.text int 1 run scoreboard players get sprite baba
execute if score sprite baba matches 1.. unless score sprite baba matches 30442 unless score sprite baba matches 26837 run data modify storage baba:main all_list append from storage baba:main sprite
execute if score sprite baba matches 1.. as @e[type=item_display,tag=baba.object,tag=!found] if score @s sprite = sprite baba run tag @s add found
execute if score sprite baba matches 1.. as @e[type=item_display,tag=baba.object,tag=part.noun,tag=!special,tag=!found_text] if score @s text = sprite baba run tag @s add found_text

execute if score sprite baba matches 1.. run function baba:board/find_all
