data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set value []
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from entity @s HandItems[0].tag.parsing.properties[].text_text
execute store result score before baba run data get entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from storage baba:main rule.effect.text_text
execute store result score after baba run data get entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags
execute if score after baba > before baba run data modify entity @s HandItems[0].tag.parsing.properties append from storage baba:main rule.effect
