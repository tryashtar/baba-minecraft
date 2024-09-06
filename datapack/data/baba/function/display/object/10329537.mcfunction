execute if entity @s[scores={facing=4}] run return run item modify entity @s contents {function:"set_components",components:{item_model:"baba:sprites/skull/facing-right"}}
execute if entity @s[scores={facing=1}] run return run item modify entity @s contents {function:"set_components",components:{item_model:"baba:sprites/skull/facing-up"}}
execute if entity @s[scores={facing=3}] run return run item modify entity @s contents {function:"set_components",components:{item_model:"baba:sprites/skull/facing-left"}}
execute if entity @s[scores={facing=2}] run return run item modify entity @s contents {function:"set_components",components:{item_model:"baba:sprites/skull/facing-down"}}
