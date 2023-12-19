$execute if entity @s[type=item_display] unless data entity @s item.tag.parsing.properties[{inverted:1b,text:"$(apply)"}] run return run data modify entity @s item.tag.parsing.properties append from storage baba:main effect
$execute if entity @s[type=marker] unless data entity @s data.parsing.properties[{inverted:1b,text:"$(apply)"}] run return run data modify entity @s data.parsing.properties append from storage baba:main effect
return fail
