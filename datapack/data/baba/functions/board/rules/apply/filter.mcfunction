# my weird way of making 'A is not B' disable 'A is B'
# add disabled properties to a marker's tags, then try to add enabled properties one by one
# if the size of the list doesn't change, the property is disabled, so skip adding it
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set value ["."]
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from entity @s data.properties[{inverted:1b}].property
data modify storage baba:main properties set value []
data modify storage baba:main properties append from entity @s data.properties[{inverted:0b}]
data modify entity @s data.properties set value []
execute if data storage baba:main properties[0] run function baba:board/rules/apply/properties

data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set value ["."]
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from entity @s data.transforms[{verb:"is",inverted:1b}].sprite
data modify storage baba:main transforms set value []
data modify storage baba:main transforms append from entity @s data.transforms[{verb:"is",inverted:0b}]
data modify storage baba:main transforms2 set from entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags
data modify storage baba:main writes set value []
data modify storage baba:main writes2 set value []
data modify storage baba:main writes2 append from entity @s data.transforms[{verb:"write",inverted:1b}].text
# 'A is not text' disables 'write'
execute unless data entity @s data.transforms[{verb:"is",inverted:1b,"sprite":"text"}] run data modify storage baba:main writes append from entity @s data.transforms[{verb:"write",inverted:0b}]
data modify entity @s data.transforms set value []
execute if data storage baba:main transforms[0] run function baba:board/rules/apply/transforms

data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set value ["."]
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set from storage baba:main writes2
execute if data storage baba:main writes[0] run function baba:board/rules/apply/writes
# if A is not A, and there are no other transforms, transform into empty
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set from storage baba:main transforms2
execute store result score before baba run data get entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from entity @s data.sprite
execute store result score after baba run data get entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags
execute unless score after baba > before baba unless data entity @s data.transforms[0] run kill @s

data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set value ["."]
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from entity @s data.has[{inverted:1b}].sprite
data modify storage baba:main has set value []
data modify storage baba:main has append from entity @s data.has[{inverted:0b}]
data modify entity @s data.has set value []
execute if data storage baba:main has[0] run function baba:board/rules/apply/has

data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set value ["."]
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from entity @s data.make[{inverted:1b}].sprite
data modify storage baba:main make set value []
data modify storage baba:main make append from entity @s data.make[{inverted:0b}]
data modify entity @s data.make set value []
execute if data storage baba:main make[0] run function baba:board/rules/apply/make
