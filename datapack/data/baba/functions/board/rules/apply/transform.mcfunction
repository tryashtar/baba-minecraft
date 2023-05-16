data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set value []
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from entity @s item.tag.parsing.transforms[].text_text
execute store result score before baba run data get entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from storage baba:main rule.effect.text_text
execute store result score after baba run data get entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags
execute if score after baba > before baba run data modify entity @s item.tag.parsing.transforms append from storage baba:main rule.effect

# 'A is A' prevents transforms
# 'A is not A' removes the object
execute store result score effect baba run data get storage baba:main rule.effect.text
execute if score effect baba = @s sprite if data storage baba:main rule.effect{inverted:1b} run data modify entity @s item.tag.parsing.delete set value 1b
execute if score effect baba = @s sprite if data storage baba:main rule.effect{inverted:0b} run data modify entity @s item.tag.parsing.block_transforms set value 1b
