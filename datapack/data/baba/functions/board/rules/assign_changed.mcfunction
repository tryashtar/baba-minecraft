execute store result score subject baba run data get storage baba:main changed_subjects[0].sprite
execute store result score inverted baba run data get storage baba:main changed_subjects[0].inverted
execute if score inverted baba matches 0 as @e[type=item_display,tag=baba.object] if score @s sprite = subject baba run tag @s add assign
execute if score inverted baba matches 1 as @e[type=item_display,tag=baba.object] unless score @s sprite = subject baba run tag @s add assign

data remove storage baba:main changed_subjects[0]
execute if data storage baba:main changed_subjects[0] run function baba:board/rules/assign_changed
