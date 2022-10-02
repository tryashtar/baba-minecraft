# my weird way of making 'A is not B' disable 'A is B'
# add disabled properties to a marker's tags, then try to add enabled properties one by one
# if the size of the list doesn't change, the property is disabled, so skip adding it
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set value []
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags append from entity @s data.properties[{inverted:1b}].property
data modify storage baba:main properties set value []
data modify storage baba:main properties append from entity @s data.properties[{inverted:0b}]
data modify entity @s data.properties set value []
execute if data storage baba:main properties[0] run function baba:board/rules/apply/properties
