title @s clear
scoreboard players set @s win 0
data modify storage baba:main last_level set from storage baba:main level_stack[-1]
data modify storage baba:main check_complete set from storage baba:main completed_levels
execute store result score count baba run data get storage baba:main completed_levels
execute store result score changed baba run data modify storage baba:main check_complete[] set from storage baba:main level_stack[-1]
execute if score changed baba >= count baba run data modify storage baba:main completed_levels append from storage baba:main level_stack[-1]
function baba:progress/exit_level
