item replace entity @s hotbar.8 with knowledge_book{rule_book:1b,display:{Name:'{"text":"rules:","color":"white","italic":false,"font":"baba:font"}'}}
tag @s add self
execute as @e[type=marker,tag=baba.rule] run item modify entity @a[tag=self,limit=1] hotbar.8 baba:append_rule
tag @s remove self
