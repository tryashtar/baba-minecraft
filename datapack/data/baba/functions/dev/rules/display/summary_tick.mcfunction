function baba:dev/rules/render
data modify entity @s text set value '{"storage":"baba:main","nbt":"text_rules[]","interpret":true,"separator":"\\n"}'
execute store result entity @s Pos[0] double 1 run scoreboard players get level_height baba
