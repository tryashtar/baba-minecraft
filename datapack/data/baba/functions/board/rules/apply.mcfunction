tag @s add self
data modify storage baba:main check_rules set from storage baba:main rules
execute if data storage baba:main check_rules[0] run function baba:board/rules/apply/rule
tag @s remove self
