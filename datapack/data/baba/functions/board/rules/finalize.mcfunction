execute if data entity @s HandItems[0].tag.parsing.writes[0] run data modify entity @s HandItems[0].tag.parsing.writes[].write set value 1b
execute if data entity @s HandItems[0].tag.parsing.transforms[{inverted:1b,text_text:"text"}] run data remove entity @s HandItems[0].tag.parsing.writes
execute if data entity @s HandItems[0].tag.parsing{delete:0b,block_transforms:1b} run data remove entity @s HandItems[0].tag.parsing.writes[]
execute if data entity @s HandItems[0].tag.parsing{delete:0b,block_transforms:1b} run data remove entity @s HandItems[0].tag.parsing.transforms[]
execute if data entity @s HandItems[0].tag.parsing{delete:1b} unless data entity @s HandItems[0].tag.parsing.transforms[{inverted:0b}] run function baba:board/interact/remove

data modify entity @s HandItems[0].tag merge value {transforms:[],properties:[],has:[],make:[]}
data modify entity @s HandItems[0].tag.properties append from entity @s HandItems[0].tag.parsing.properties[{inverted:0b}].text_text
data modify entity @s HandItems[0].tag.has append from entity @s HandItems[0].tag.parsing.has[{inverted:0b}].text_text
data modify entity @s HandItems[0].tag.make append from entity @s HandItems[0].tag.parsing.make[{inverted:0b}].text
data modify entity @s HandItems[0].tag.transforms append from entity @s HandItems[0].tag.parsing.transforms[{inverted:0b}]
data modify entity @s HandItems[0].tag.transforms append from entity @s HandItems[0].tag.parsing.writes[{inverted:0b}]

execute if entity @s[scores={sprite=30442},nbt=!{HandItems:[{tag:{parsing:{properties:[{inverted:1b,text_text:"push"}]}}}]}] run data modify entity @s HandItems[0].tag.properties append value "push"
execute if entity @s[scores={sprite=26837},nbt=!{HandItems:[{tag:{parsing:{properties:[{inverted:1b,text_text:"stop"}]}}}]}] run data modify entity @s HandItems[0].tag.properties append value "stop"
execute if entity @s[scores={sprite=2526},nbt=!{HandItems:[{tag:{parsing:{properties:[{inverted:1b,text_text:"select"}]}}}]}] run data modify entity @s HandItems[0].tag.properties append value "select"
