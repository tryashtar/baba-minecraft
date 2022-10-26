execute if data entity @s data.parsing.writes[0] run data modify entity @s data.parsing.writes[].write set value 1b
execute if data entity @s data.parsing.transforms[{inverted:1b,text_text:"text"}] run data remove entity @s data.parsing.writes
execute if data entity @s data.parsing{delete:0b,block_transforms:1b} run data remove entity @s data.parsing.writes[]
execute if data entity @s data.parsing{delete:0b,block_transforms:1b} run data remove entity @s data.parsing.transforms[]
execute if data entity @s data.parsing{delete:1b} unless data entity @s data.parsing.transforms[{inverted:0b}] run kill @s

data modify entity @s data merge value {transforms:[],properties:[],has:[],make:[]}
data modify entity @s data.properties append from entity @s data.parsing.properties[{inverted:0b}].text_text
data modify entity @s data.has append from entity @s data.parsing.has[{inverted:0b}].text_text
data modify entity @s data.make append from entity @s data.parsing.make[{inverted:0b}].text
data modify entity @s data.transforms append from entity @s data.parsing.transforms[{inverted:0b}]
data modify entity @s data.transforms append from entity @s data.parsing.writes[{inverted:0b}]

execute if entity @s[scores={sprite=30442},nbt=!{data:{parsing:{properties:[{inverted:1b,text_text:"push"}]}}}] run data modify entity @s data.properties append value "push"
execute if entity @s[scores={sprite=26837},nbt=!{data:{parsing:{properties:[{inverted:1b,text_text:"stop"}]}}}] run data modify entity @s data.properties append value "stop"
execute if entity @s[scores={sprite=2526},nbt=!{data:{parsing:{properties:[{inverted:1b,text_text:"select"}]}}}] run data modify entity @s data.properties append value "select"
