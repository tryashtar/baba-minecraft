execute if entity @s[scores={facing=4}] run return run item modify entity @s contents {function:"set_components",components:{item_model:"baba:sprites/bug/facing-right"}}
execute if entity @s[scores={facing=1}] run return run item modify entity @s contents {function:"set_components",components:{item_model:"baba:sprites/bug/facing-up"}}
execute if entity @s[scores={facing=3}] run return run item modify entity @s contents {function:"set_components",components:{item_model:"baba:sprites/bug/facing-left"}}
execute if entity @s[scores={facing=2}] run return run item modify entity @s contents {function:"set_components",components:{item_model:"baba:sprites/bug/facing-down"}}
