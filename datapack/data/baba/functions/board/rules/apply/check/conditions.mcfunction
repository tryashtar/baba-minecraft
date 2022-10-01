data modify storage baba:main condition set from storage baba:main rule.conditions[0][0]
# the condition could be inverted, so this must be checked in its function
execute if data storage baba:main condition{condition:"lonely"} run function baba:board/rules/apply/check/lonely
execute if data storage baba:main condition{condition:"near"} run function baba:board/rules/apply/check/near
execute if data storage baba:main condition{condition:"on"} run function baba:board/rules/apply/check/on
execute if data storage baba:main condition{condition:"facing"} run function baba:board/rules/apply/check/facing

# this function and its subfunctions break early if a condition fails, or a list of alternatives passes
data remove storage baba:main rule.conditions[0]
execute if score affected baba matches 1 if data storage baba:main rule.conditions[0] run function baba:board/rules/apply/check/conditions
