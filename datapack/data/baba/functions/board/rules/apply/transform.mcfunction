data modify storage baba:main check set value []
data modify storage baba:main check append from entity @s[type=item_display] item.tag.parsing.transforms[{inverted:1b}].text
data modify storage baba:main check append from entity @s[type=marker] data.parsing.transforms[{inverted:1b}].text
execute store result score size baba run data get storage baba:main check
execute store result score changed baba run data modify storage baba:main check[] set from storage baba:main effect.text
execute if score changed baba >= size baba run data modify entity @s[type=item_display] item.tag.parsing.transforms append from storage baba:main effect
execute if score changed baba >= size baba run data modify entity @s[type=marker] data.parsing.transforms append from storage baba:main effect

# transforming into "yourself" prevents transforms
# transforming into "not yourself" deletes you (and allows transforms again)
execute if score effect baba = @s[type=item_display] sprite if data storage baba:main effect{inverted:1b} run data modify entity @s item.tag.parsing.delete set value 1b
execute if score effect baba = @s[type=item_display] sprite if data storage baba:main effect{inverted:0b} run data modify entity @s item.tag.parsing.block_transforms set value 1b
execute if score effect baba = @s[type=marker] sprite if data storage baba:main effect{inverted:1b} run data modify entity @s data.parsing.delete set value 1b
execute if score effect baba = @s[type=marker] sprite if data storage baba:main effect{inverted:0b} run data modify entity @s data.parsing.block_transforms set value 1b
