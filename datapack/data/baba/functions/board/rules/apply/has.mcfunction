data modify storage baba:main check set value []
data modify storage baba:main check append from entity @s[type=item_display] item.tag.parsing.has[{inverted:1b}].text
data modify storage baba:main check append from entity @s[type=marker] data.parsing.has[{inverted:1b}].text
execute store result score size baba run data get storage baba:main check
execute store result score changed baba run data modify storage baba:main check[] set from storage baba:main effect.text
execute if score changed baba >= size baba unless data storage baba:main effect{text:1065,inverted:0b} run data modify entity @s[type=item_display] item.tag.parsing.has append from storage baba:main effect
execute if score changed baba >= size baba unless data storage baba:main effect{text:1065,inverted:0b} run data modify entity @s[type=marker] data.parsing.has append from storage baba:main effect
execute if score changed baba >= size baba if data storage baba:main effect{text:1065,inverted:0b} run data modify storage baba:main apply_all set from storage baba:main all_list
execute if score changed baba >= size baba if data storage baba:main effect{text:1065,inverted:0b} run function baba:board/rules/apply/has_all
