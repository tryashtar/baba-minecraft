# the entity's property data aren't yet in the format we like, in order for the 'Tags' trick to work
# here, we merge 'writes' with 'transforms', handle 'A is A' and 'A is not A', and throw away inverted properties
tag @s remove assign
execute if data entity @s item.tag.parsing.writes[0] run data modify entity @s item.tag.parsing.writes[].write set value 1b
execute if data entity @s item.tag.parsing.transforms[0] run data modify entity @s item.tag.parsing.transforms[].write set value 0b
execute if data entity @s item.tag.parsing.transforms[{inverted:1b,text_text:"text"}] run data remove entity @s item.tag.parsing.writes
execute if data entity @s item.tag.parsing{delete:0b,block_transforms:1b} run data remove entity @s item.tag.parsing.writes[]
execute if data entity @s item.tag.parsing{delete:0b,block_transforms:1b} run data remove entity @s item.tag.parsing.transforms[]
execute if data entity @s item.tag.parsing{delete:1b} unless data entity @s item.tag.parsing.transforms[{inverted:0b}] run function baba:board/interact/remove

data modify entity @s item.tag merge value {transforms:[],properties:[],has:[],make:[]}
data modify entity @s item.tag.properties append from entity @s item.tag.parsing.properties[{inverted:0b}].text_text
data modify entity @s item.tag.has append from entity @s item.tag.parsing.has[{inverted:0b}].text
data modify entity @s item.tag.make append from entity @s item.tag.parsing.make[{inverted:0b}].text
data modify entity @s item.tag.transforms append from entity @s item.tag.parsing.transforms[{inverted:0b}]
data modify entity @s item.tag.transforms append from entity @s item.tag.parsing.writes[{inverted:0b}]
execute if data entity @s item.tag.transforms[{inverted:0b,write:0b,text_text:"all"}] run data modify entity @s item.tag.transforms[{inverted:0b,write:0b,text_text:"all"}].all set from storage baba:main all_list
execute if data entity @s item.tag.transforms[{inverted:0b,write:1b,text_text:"all"}] run data modify entity @s item.tag.transforms[{inverted:0b,write:1b,text_text:"all"}].all set from storage baba:main all_write_list
data modify entity @s item.tag.transforms append from entity @s item.tag.transforms[].all[]
data remove entity @s item.tag.transforms[{inverted:0b,text_text:"all",write:0b}]

# builtin rules: 'text is push', 'level is stop', 'cursor is select'
# can be disabled by inverted rules
execute if entity @s[scores={sprite=30442},nbt=!{item:{tag:{parsing:{properties:[{inverted:1b,text_text:"push"}]}}}}] run data modify entity @s item.tag.properties append value "push"
execute if entity @s[scores={sprite=26837},nbt=!{item:{tag:{parsing:{properties:[{inverted:1b,text_text:"stop"}]}}}}] run data modify entity @s item.tag.properties append value "stop"
execute if entity @s[scores={sprite=2526},nbt=!{item:{tag:{parsing:{properties:[{inverted:1b,text_text:"select"}]}}}}] run data modify entity @s item.tag.properties append value "select"
