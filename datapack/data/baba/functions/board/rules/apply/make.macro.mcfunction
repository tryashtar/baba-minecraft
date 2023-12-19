$execute if entity @s[type=item_display] unless data entity @s item.tag.parsing.make[{inverted:1b,text:"$(apply)"}] run data modify entity @s item.tag.parsing.make append from storage baba:main effect
$execute if entity @s[type=marker] unless data entity @s data.parsing.make[{inverted:1b,text:"$(apply)"}] run data modify entity @s data.parsing.make append from storage baba:main effect
