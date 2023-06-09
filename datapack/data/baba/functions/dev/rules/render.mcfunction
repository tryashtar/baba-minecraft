data modify storage baba:main text_rules set value []
data modify storage baba:main iter_rules set from storage baba:main rules
execute if data storage baba:main rules[0] run function baba:dev/rules/append_loop
