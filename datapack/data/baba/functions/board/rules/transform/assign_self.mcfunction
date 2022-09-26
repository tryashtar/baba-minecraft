data modify storage baba:main sprite set from entity @s data.sprite
execute store success score different baba run data modify storage baba:main sprite set from storage baba:main affected_sprite
execute if score different baba matches 0 run data modify entity @s data.sprite set from storage baba:main transform_into
# when transforming into text, you transform into text of your own kind
execute if score different baba matches 0 if data storage baba:main {transform_into:"text"} run data modify entity @s data.text set from storage baba:main affected_sprite
execute if score different baba matches 0 run tag @s add transformed
