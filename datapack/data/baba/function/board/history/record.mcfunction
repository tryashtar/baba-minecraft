data modify storage baba:main rule_history set from entity @s data.rule_history

execute as @e[type=marker,tag=baba.space,tag=active,tag=dirty] at @s run function baba:board/history/record_space
scoreboard players add @e[type=marker,tag=baba.space,tag=active,tag=!dirty] repeats 1
tag @e[type=marker,tag=baba.space,tag=active,tag=dirty] remove dirty

data modify storage baba:main current_rules set value {repeats:1,rules:[]}
execute if score rules_changed baba matches 1 as @e[type=marker,tag=baba.rule,tag=active] run function baba:board/history/add_rule
execute if score rules_changed baba matches 1 run data modify storage baba:main rule_history append from storage baba:main current_rules
execute if score rules_changed baba matches 0 store result score repeats baba run data get storage baba:main rule_history[-1].repeats

# if nothing changed, don't record this step
execute if score rules_changed baba matches 0 if entity @e[type=marker,tag=baba.space,tag=active,scores={repeats=1},limit=1] store result storage baba:main rule_history[-1].repeats int 1 run scoreboard players add repeats baba 1
execute if entity @e[type=marker,tag=baba.space,tag=active,scores={repeats=1},limit=1] run scoreboard players add steps baba 1
execute unless entity @e[type=marker,tag=baba.space,tag=active,scores={repeats=1},limit=1] run scoreboard players remove @e[type=marker,tag=baba.space,tag=active] repeats 1

data modify entity @s data.rule_history set from storage baba:main rule_history
