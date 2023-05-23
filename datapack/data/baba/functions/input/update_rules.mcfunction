item replace entity @s hotbar.8 with knowledge_book{rule_book:1b,display:{Name:'{"text":"rules:","color":"white","italic":false,"font":"baba:font"}'}}

data modify storage baba:main iter_rules set from storage baba:main rules
execute if data storage baba:main rules[0] run function baba:dev/rules/append_loop
