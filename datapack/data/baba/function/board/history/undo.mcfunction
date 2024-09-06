scoreboard players remove steps baba 1
scoreboard players remove @e[type=marker,tag=baba.space] repeats 1
execute as @e[type=marker,tag=baba.space,scores={repeats=0}] at @s run function baba:board/history/pop
execute if score empty baba matches 1 run function baba:board/update_empty

execute store result score repeats baba run data get storage baba:main rule_history[-1].repeats
execute if score repeats baba matches 1 run kill @e[type=marker,tag=baba.rule]
execute if score repeats baba matches 1 run data remove storage baba:main rule_history[-1]
execute if score repeats baba matches 1 run data modify storage baba:main current_rules set from storage baba:main rule_history[-1].rules
execute if score repeats baba matches 1 summon marker run function baba:board/history/pop_rules
execute if score repeats baba matches 2.. store result storage baba:main rule_history[-1].repeats int 1 run scoreboard players remove repeats baba 1

function baba:display/update
