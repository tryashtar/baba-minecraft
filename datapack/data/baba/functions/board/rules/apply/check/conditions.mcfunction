data modify storage baba:main condition set from storage baba:main check_rules[0].conditions[0][0]
execute if data storage baba:main condition{condition:"lonely"} run function baba:board/rules/apply/check/lonely
execute if data storage baba:main condition{condition:"near"} run function baba:board/rules/apply/check/near
execute if data storage baba:main condition{condition:1b} run function baba:board/rules/apply/check/on
execute if data storage baba:main condition{condition:"facing"} run function baba:board/rules/apply/check/facing

data remove storage baba:main check_rules[0].conditions[0]
execute if score affected baba matches 1 if data storage baba:main check_rules[0].conditions[0] run function baba:board/rules/apply/check/conditions
