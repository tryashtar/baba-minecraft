data modify storage baba:main check set value []
data modify storage baba:main check append from entity @s[type=item_display] item.tag.parsing.make[{inverted:1b}].text
data modify storage baba:main check append from entity @s[type=marker] data.parsing.make[{inverted:1b}].text
execute store result score size baba run data get storage baba:main check
execute store result score changed baba run data modify storage baba:main check[] set from storage baba:main effect.text
execute if score changed baba >= size baba run data modify entity @s[type=item_display] item.tag.parsing.make append from storage baba:main effect
execute if score changed baba >= size baba run data modify entity @s[type=marker] data.parsing.make append from storage baba:main effect
