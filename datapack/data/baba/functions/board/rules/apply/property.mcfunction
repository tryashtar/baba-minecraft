data modify storage baba:main check set value []
data modify storage baba:main check append from entity @s item.tag.parsing.properties[{inverted:1b}].text
execute store result score size baba run data get storage baba:main check
execute store result score changed baba run data modify storage baba:main check[] set from storage baba:main rule.effect.text
execute if score changed baba >= size baba run data modify entity @s item.tag.parsing.properties append from storage baba:main rule.effect
