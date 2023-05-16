data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set value []
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from entity @s item.tag.parsing.make[].text_text
execute store result score before baba if data entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags[]
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from storage baba:main rule.effect.text_text
execute store result score after baba if data entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags[]
execute if score after baba > before baba run data modify entity @s item.tag.parsing.make append from storage baba:main rule.effect
