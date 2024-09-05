scoreboard players operation sprite baba = @s sprite
scoreboard players operation text baba = @s text
scoreboard players operation life baba = @s life
execute if entity @s[tag=!remove] run scoreboard players set disable_change baba 1
execute if entity @s[tag=remove] run scoreboard players set disable_change baba -1
# 'ALL verb not X' disables 'A verb X' unless A is empty/text/level/group
execute if entity @s[tag=!subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,predicate=baba:match_score/life,predicate=baba:match_score/text] text_disabled += disable_change baba
# 'ALL is not text' disables 'A write X' unless A is empty/text/level/group
execute if score life baba matches 262 if score text baba matches 397973 if entity @s[tag=!subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=write_transform,tag=!subject_inverted,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group] text_disabled += disable_change baba
# 'not ALL verb not X' disables 'empty/text/not all verb X'
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_empty] text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_text] text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=subject_inverted,tag=subject_all] text_disabled += disable_change baba
# 'not ALL is not text' disables 'empty/text/not all write X'
execute if score life baba matches 262 if score text baba matches 397973 if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=write_transform,tag=!subject_inverted,tag=subject_empty] text_disabled += disable_change baba
execute if score life baba matches 262 if score text baba matches 397973 if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=write_transform,tag=!subject_inverted,tag=subject_text] text_disabled += disable_change baba
execute if score life baba matches 262 if score text baba matches 397973 if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=write_transform,tag=subject_inverted,tag=subject_all] text_disabled += disable_change baba
# 'not A verb not X' disables 'B verb X' unless B is all/empty/text/level/group
execute if entity @s[tag=subject_inverted,tag=!subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,predicate=baba:match_score/life,predicate=baba:match_score/text,predicate=!baba:match_score/sprite] text_disabled += disable_change baba
# 'not A is not text' disables 'B write X' unless B is all/empty/text/level/group
execute if score life baba matches 262 if score text baba matches 397973 if entity @s[tag=subject_inverted,tag=!subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=write_transform,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,predicate=!baba:match_score/sprite] text_disabled += disable_change baba
# 'not A verb not X' disables 'not A verb X'
execute if entity @s[tag=subject_inverted,tag=!subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=subject_inverted,predicate=baba:match_score/life,predicate=baba:match_score/text,predicate=baba:match_score/sprite] text_disabled += disable_change baba
# 'not A is not text' disables 'not A write X'
execute if score life baba matches 262 if score text baba matches 397973 if entity @s[tag=subject_inverted,tag=!subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=write_transform,tag=subject_inverted,predicate=baba:match_score/sprite] text_disabled += disable_change baba
# 'A verb not X' disables 'A verb X'
execute if entity @s[tag=!subject_inverted,tag=!subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,predicate=baba:match_score/life,predicate=baba:match_score/text,predicate=baba:match_score/sprite] text_disabled += disable_change baba
# 'A is not text' disables 'A write X'
execute if score life baba matches 262 if score text baba matches 397973 if entity @s[tag=!subject_inverted,tag=!subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=write_transform,tag=!subject_inverted,predicate=baba:match_score/sprite] text_disabled += disable_change baba
