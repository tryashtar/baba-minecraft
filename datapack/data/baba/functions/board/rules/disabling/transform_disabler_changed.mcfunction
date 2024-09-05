scoreboard players operation sprite baba = @s sprite
scoreboard players operation text baba = @s sprite
execute if entity @s[tag=!remove] run scoreboard players set disable_change baba 1
execute if entity @s[tag=remove] run scoreboard players set disable_change baba -1
execute if entity @s[scores={last_disabled=0,text_disabled=1..}] run scoreboard players set disable_change baba -1
execute if entity @s[scores={last_disabled=1..,text_disabled=0}] run scoreboard players set disable_change baba 1
# 'ALL is A' disables 'A is B' and 'A write B' unless A is all/empty/text/level/group
execute if entity @s[tag=!subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={life=262},predicate=baba:match_score/sprite,predicate=!baba:match_score/text] text_disabled += disable_change baba
execute if entity @s[tag=!subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={life=12584543},predicate=baba:match_score/sprite] text_disabled += disable_change baba
# 'not ALL is text' disables 'text is B' and 'text write B'
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_text,scores={life=262},predicate=baba:match_score/sprite,predicate=!baba:match_score/text] text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_text,scores={life=12584543},predicate=baba:match_score/sprite] text_disabled += disable_change baba
# 'not ALL is empty' disables 'empty is B' and 'empty write B'
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_empty,scores={life=262},predicate=baba:match_score/sprite,predicate=!baba:match_score/text] text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_empty,scores={life=12584543},predicate=baba:match_score/sprite] text_disabled += disable_change baba
# 'A is A' disables 'A is B' and 'A write B'
execute if entity @s[tag=!subject_inverted,tag=!subject_all,predicate=baba:match_score/text] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,scores={life=262},predicate=baba:match_score/sprite,predicate=!baba:match_score/text] text_disabled += disable_change baba
execute if entity @s[tag=!subject_inverted,tag=!subject_all,predicate=baba:match_score/text] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,scores={life=12584543},predicate=baba:match_score/sprite] text_disabled += disable_change baba
# 'not C is A' disables 'A is B' and 'A write B' unless C is all/empty/text/level/group
execute if entity @s[tag=subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,scores={life=262},predicate=baba:match_score/sprite,predicate=!baba:match_score/text] text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,scores={life=12584543},predicate=baba:match_score/sprite] text_disabled += disable_change baba
