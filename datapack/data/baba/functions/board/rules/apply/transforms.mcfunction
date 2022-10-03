data modify storage baba:main sprite set from entity @s data.sprite
execute store success score different baba run data modify storage baba:main sprite set from storage baba:main transforms[0].sprite
execute store result score before baba run data get entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from storage baba:main transforms[0].sprite
execute store result score after baba run data get entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags
execute if score after baba > before baba run data modify entity @s data.transforms append from storage baba:main transforms[0]

# 'A is A' prevents transforms, unless 'A is not A'
execute if score after baba > before baba if score different baba matches 0 run data modify entity @s data.transforms set value []
execute if score after baba > before baba if score different baba matches 0 run data remove storage baba:main transforms
execute if score after baba > before baba if score different baba matches 0 run data remove storage baba:main writes

data remove storage baba:main transforms[0]
execute if data storage baba:main transforms[0] run function baba:board/rules/apply/transforms
