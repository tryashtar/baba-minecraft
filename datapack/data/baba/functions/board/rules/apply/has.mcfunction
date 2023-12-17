data modify storage baba:main check set value []
execute if entity @s[type=item_display] run data modify storage baba:main check append from entity @s item.tag.parsing.has[{inverted:1b}].text
execute if entity @s[type=marker] run data modify storage baba:main check append from entity @s data.parsing.has[{inverted:1b}].text
execute store result score size baba run data get storage baba:main check
execute store result score changed baba run data modify storage baba:main check[] set from storage baba:main effect.text
execute if entity @s[type=item_display] if score changed baba >= size baba unless data storage baba:main effect{text:1065,inverted:0b} run data modify entity @s item.tag.parsing.has append from storage baba:main effect
execute if entity @s[type=marker] if score changed baba >= size baba unless data storage baba:main effect{text:1065,inverted:0b} run data modify entity @s data.parsing.has append from storage baba:main effect
execute if score changed baba >= size baba if data storage baba:main effect{text:1065,inverted:0b} run data modify storage baba:main apply_all set from storage baba:main all_list
execute if score changed baba >= size baba if data storage baba:main effect{text:1065,inverted:0b} run function baba:board/rules/apply/has_all
