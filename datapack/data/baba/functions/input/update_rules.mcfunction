item replace entity @s hotbar.8 with knowledge_book{rule_book:1b,display:{Name:'{"text":"rules:","color":"white","italic":false,"font":"baba:font"}'}}
function baba:dev/rules/render
execute if data storage baba:main text_rules[0] run function baba:input/update_rules_loop
