item replace entity @s hotbar.2 with music_disc_stal[item_name='"< < <"',custom_data={hold:"reverse"}]
item replace entity @s hotbar.3 with carrot_on_a_stick[item_name='"<"',custom_data={use:"reverse"}]
item replace entity @s hotbar.5 with carrot_on_a_stick[item_name='">"',custom_data={use:"forward"}]
item replace entity @s hotbar.6 with music_disc_strad[item_name='"> > >"',custom_data={hold:"forward"}]
tag @s remove forward
tag @s[predicate=baba:holding_forward] add forward
tag @s[predicate=baba:using_forward,scores={use=1..}] add forward
tag @s remove reverse
tag @s[predicate=baba:holding_reverse] add reverse
tag @s[predicate=baba:using_reverse,scores={use=1..}] add reverse
scoreboard players reset @s[scores={use=1..}] use

execute if entity @s[tag=forward] store result score direction baba run data get storage baba:main moves[0]
execute if entity @s[tag=forward] run function baba:board/step
execute if entity @s[tag=forward] run data modify storage baba:main old_moves prepend from storage baba:main moves[0]
execute if entity @s[tag=forward] run data remove storage baba:main moves[0]

execute if entity @s[tag=reverse] if score steps baba matches 1.. run function baba:board/history/undo
execute if entity @s[tag=reverse] run data modify storage baba:main moves prepend from storage baba:main old_moves[0]
execute if entity @s[tag=reverse] run data remove storage baba:main old_moves[0]

scoreboard players set @s win 0
