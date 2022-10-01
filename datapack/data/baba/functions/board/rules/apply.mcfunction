tag @s add self
data modify storage baba:main cache set value {transforms:[],disabled_transforms:[],properties:[],disabled_properties:[],has:[],disabled_has:[],make:[],disabled_make:[],write:[],disabled_write:[]}
data modify entity @s data merge value {transforms:[],properties:[],has:[],make:[],write:[]}
data modify storage baba:main check_rules set from storage baba:main rules
execute if data storage baba:main check_rules[0] run function baba:board/rules/apply/rule
tag @s remove self

data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set from storage baba:main cache.disabled_properties
execute if data storage baba:main cache.properties[0] run function baba:board/rules/apply/properties
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set from storage baba:main cache.disabled_transforms
execute if data storage baba:main cache.transforms[0] run function baba:board/rules/apply/transforms
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set from storage baba:main cache.disabled_has
execute if data storage baba:main cache.has[0] run function baba:board/rules/apply/has
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set from storage baba:main cache.disabled_make
execute if data storage baba:main cache.make[0] run function baba:board/rules/apply/make
data modify entity aee4e839-6b46-4f38-97f8-d49dfe743ff1 Tags set from storage baba:main cache.disabled_write
execute if data storage baba:main cache.write[0] run function baba:board/rules/apply/write
