execute if entity @s[tag=!complete] run return run item modify entity @s contents {function:"set_components",components:{item_model:"baba:sprites/level/complete-false"}}
execute if entity @s[tag=complete] run return run item modify entity @s contents {function:"set_components",components:{item_model:"baba:sprites/level/complete-true"}}
