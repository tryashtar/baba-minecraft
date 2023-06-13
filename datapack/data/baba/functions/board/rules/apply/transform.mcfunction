data modify storage baba:main check set value []
data modify storage baba:main check append from entity @s item.tag.parsing.transforms[{inverted:1b}].text
execute store result score size baba run data get storage baba:main check
execute store result score changed baba run data modify storage baba:main check[] set from storage baba:main effect.text
execute if score changed baba >= size baba run data modify entity @s item.tag.parsing.transforms append from storage baba:main effect

# 'A is A' prevents transforms
# 'A is not A' removes the object
execute store result score effect baba run data get storage baba:main effect.text
execute if score effect baba = @s sprite if data storage baba:main effect{inverted:1b} run data modify entity @s item.tag.parsing.delete set value 1b
execute if score effect baba = @s sprite if data storage baba:main effect{inverted:0b} run data modify entity @s item.tag.parsing.block_transforms set value 1b
