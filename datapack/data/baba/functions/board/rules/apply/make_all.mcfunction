data modify storage baba:main check set value []
execute if entity @s[type=item_display] run data modify storage baba:main check append from entity @s item.tag.parsing.make[{inverted:1b}].text
execute if entity @s[type=marker] run data modify storage baba:main check append from entity @s data.parsing.make[{inverted:1b}].text
execute store result score size baba run data get storage baba:main check
execute store result score changed baba run data modify storage baba:main check[] set from storage baba:main apply_all[0].text
execute if entity @s[type=item_display] if score changed baba >= size baba run data modify entity @s item.tag.parsing.make append from storage baba:main apply_all[0]
execute if entity @s[type=marker] if score changed baba >= size baba run data modify entity @s data.parsing.make append from storage baba:main apply_all[0]

data remove storage baba:main apply_all[0]
execute if data storage baba:main apply_all[0] run function baba:board/rules/apply/make_all
