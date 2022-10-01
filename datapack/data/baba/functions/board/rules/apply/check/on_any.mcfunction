execute as @e[type=marker,tag=baba.object,tag=!self,distance=..0.1] run function baba:board/rules/apply/check/on_is

data remove storage baba:main condition.value[0][0]
execute if score match baba matches 0 if data storage baba:main condition.value[0][0] run function baba:board/rules/apply/check/on_any
