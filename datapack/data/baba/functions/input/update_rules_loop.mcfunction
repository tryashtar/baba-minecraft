item modify entity @s hotbar.8 baba:append_rule
data remove storage baba:main text_rules[0]
execute if data storage baba:main text_rules[0] run function baba:input/update_rules_loop
