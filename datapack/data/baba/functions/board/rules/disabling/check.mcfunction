scoreboard players operation subject2 baba = subject baba

# 'not A' treats text/level/empty as if they match
execute if entity @s[tag=subject_inverted] if score subject baba matches 397973 run scoreboard players operation subject2 baba = @s sprite
execute if entity @s[tag=subject_inverted] if score subject baba matches 6491892 run scoreboard players operation subject2 baba = @s sprite
execute if entity @s[tag=subject_inverted] if score subject baba matches 2925313 run scoreboard players operation subject2 baba = @s sprite

# 'ALL' treats the non-text/level/empty as if they match
execute if entity @s[tag=!subject_inverted,scores={sprite=1065}] unless score subject baba matches 397973 unless score subject baba matches 6491892 unless score subject baba matches 2925313 run scoreboard players operation subject2 baba = @s sprite

# 'not ALL' treats text/level/empty as if they match
execute if entity @s[tag=subject_inverted,scores={sprite=1065}] if score subject baba matches 397973 run scoreboard players operation subject2 baba = @s sprite
execute if entity @s[tag=subject_inverted,scores={sprite=1065}] if score subject baba matches 2925313 run scoreboard players operation subject2 baba = @s sprite
execute if entity @s[tag=subject_inverted,scores={sprite=1065}] if score subject baba matches 6491892 run scoreboard players operation subject2 baba = @s sprite

# 'A is not text' disables 'A write B'
execute if score @s sprite = subject2 baba if entity @s[tag=!subject_inverted,scores={life=262,text=397973}] if score subject_inverted baba matches 0 if score verb baba matches 12584543 run data modify storage baba:main disabled_ids append from storage baba:main current_ids[]
# 'not A is not text' disables 'B write C'
execute unless score @s sprite = subject2 baba if entity @s[tag=subject_inverted,scores={life=262,text=397973}] if score subject_inverted baba matches 0 if score verb baba matches 12584543 run data modify storage baba:main disabled_ids append from storage baba:main current_ids[]
# 'not A is not text' disables 'not A write C'
execute if score @s sprite = subject2 baba if entity @s[tag=subject_inverted,scores={life=262,text=397973}] if score subject_inverted baba matches 1 if score verb baba matches 12584543 run data modify storage baba:main disabled_ids append from storage baba:main current_ids[]
# 'A is not A' enables 'A is B' if disabled by 'A is A'
execute if score @s sprite = @s text if score @s sprite = subject2 baba unless score @s text = effect baba if entity @s[tag=!subject_inverted] if score subject_inverted baba matches 0 if score verb baba matches 262 if score effect_noun baba matches 1 run data modify storage baba:main enabled_ids append from storage baba:main current_ids[]
# 'A is not A' enables 'A write B' if disabled by 'A is A'
execute if score @s sprite = @s text if score @s sprite = subject2 baba if entity @s[tag=!subject_inverted] if score subject_inverted baba matches 0 if score verb baba matches 12584543 if score effect_noun baba matches 1 run data modify storage baba:main enabled_ids append from storage baba:main current_ids[]
# 'A verb not B' disables 'A verb B'
execute if score @s sprite = subject2 baba if score @s life = verb baba if score @s text = effect baba if entity @s[tag=!subject_inverted] if score subject_inverted baba matches 0 run data modify storage baba:main disabled_ids append from storage baba:main current_ids[]
# 'not A verb not B' disables 'C verb B'
execute unless score @s sprite = subject2 baba if score @s life = verb baba if score @s text = effect baba if entity @s[tag=subject_inverted] if score subject_inverted baba matches 0 run data modify storage baba:main disabled_ids append from storage baba:main current_ids[]
# 'not A verb not B' disables 'not A verb B'
execute if score @s sprite = subject2 baba if score @s life = verb baba if score @s text = effect baba if entity @s[tag=subject_inverted] if score subject_inverted baba matches 1 run data modify storage baba:main disabled_ids append from storage baba:main current_ids[]
