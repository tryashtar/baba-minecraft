execute store result score condition_inverted baba run data get storage baba:main condition.inverted
scoreboard players set match baba 0
# text stacking requires us to check if we're facing any of a list of sprites
# but we can reuse on_any since it has the exact logic we need
execute if entity @s[scores={facing=1}] rotated 270 0 positioned ^ ^ ^1 run function baba:board/rules/apply/check/on_any
execute if entity @s[scores={facing=2}] rotated 90 0 positioned ^ ^ ^1 run function baba:board/rules/apply/check/on_any
execute if entity @s[scores={facing=3}] rotated 180 0 positioned ^ ^ ^1 run function baba:board/rules/apply/check/on_any
execute if entity @s[scores={facing=4}] rotated 0 0 positioned ^ ^ ^1 run function baba:board/rules/apply/check/on_any
execute if score match baba = condition_inverted baba run scoreboard players set affected baba 0

data remove storage baba:main condition.value[0]
execute if score affected baba matches 1 if data storage baba:main condition.value[0] run function baba:board/rules/apply/check/facing
