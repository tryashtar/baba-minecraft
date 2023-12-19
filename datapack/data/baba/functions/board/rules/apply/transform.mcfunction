data modify storage baba:main context.apply set from storage baba:main effect.text
function baba:board/rules/apply/transform.macro with storage baba:main context

# transforming into "yourself" prevents transforms
# transforming into "not yourself" deletes you (and allows transforms again)
execute if entity @s[type=item_display] if score effect baba = @s sprite if data storage baba:main effect{inverted:1b} run data modify entity @s item.tag.parsing.delete set value 1b
execute if entity @s[type=item_display] if score effect baba = @s sprite if data storage baba:main effect{inverted:0b} run data modify entity @s item.tag.parsing.block_transforms set value 1b
execute if entity @s[type=marker] if score effect baba = @s sprite if data storage baba:main effect{inverted:1b} run data modify entity @s data.parsing.delete set value 1b
execute if entity @s[type=marker] if score effect baba = @s sprite if data storage baba:main effect{inverted:0b} run data modify entity @s data.parsing.block_transforms set value 1b
