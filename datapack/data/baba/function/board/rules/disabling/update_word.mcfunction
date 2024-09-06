execute if entity @s[tag=!disabled] if score @s text_disabled >= @s text_used run tag @s add dirty
execute if entity @s[tag=disabled] unless score @s text_disabled >= @s text_used run tag @s add dirty
tag @s[tag=disabled,scores={text_used=0}] add dirty
execute if entity @s[tag=!disabled] if score @s text_disabled >= @s text_used run tag @s add disabled
execute if entity @s[tag=disabled] unless score @s text_disabled >= @s text_used run tag @s remove disabled
tag @s[tag=disabled,scores={text_used=0}] remove disabled
