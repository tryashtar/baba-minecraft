# the entity's property data aren't yet in the format we like, in order for the 'Tags' trick to work
# here, we merge 'writes' with 'transforms', handle 'A is A' and 'A is not A', and throw away inverted properties
data modify storage baba:main rule_data set from entity @s item.tag
execute if data storage baba:main rule_data.parsing.writes[0] run data modify storage baba:main rule_data.parsing.writes[].write set value 1b
execute if data storage baba:main rule_data.parsing.transforms[0] run data modify storage baba:main rule_data.parsing.transforms[].write set value 0b
execute if data storage baba:main rule_data.parsing.transforms[{inverted:1b,text_text:"text"}] run data remove storage baba:main rule_data.parsing.writes
execute if data storage baba:main rule_data.parsing{delete:0b,block_transforms:1b} run data remove storage baba:main rule_data.parsing.writes[]
execute if data storage baba:main rule_data.parsing{delete:0b,block_transforms:1b} run data remove storage baba:main rule_data.parsing.transforms[]
execute if data storage baba:main rule_data.parsing{delete:1b} unless data storage baba:main rule_data.parsing.transforms[{inverted:0b}] run function baba:board/interact/remove

data modify storage baba:main rule_data merge value {transforms:[],properties:[],has:[],make:[]}
data modify storage baba:main rule_data.properties append from storage baba:main rule_data.parsing.properties[{inverted:0b}].text_text
data modify storage baba:main rule_data.has append from storage baba:main rule_data.parsing.has[{inverted:0b}].text
data modify storage baba:main rule_data.make append from storage baba:main rule_data.parsing.make[{inverted:0b}].text
data modify storage baba:main rule_data.transforms append from storage baba:main rule_data.parsing.transforms[{inverted:0b}]
data modify storage baba:main rule_data.transforms append from storage baba:main rule_data.parsing.writes[{inverted:0b}]
execute if data storage baba:main rule_data.transforms[{inverted:0b,write:0b,text_text:"all"}] run data modify storage baba:main rule_data.transforms[{inverted:0b,write:0b,text_text:"all"}].all set from storage baba:main all_list
execute if data storage baba:main rule_data.transforms[{inverted:0b,write:1b,text_text:"all"}] run data modify storage baba:main rule_data.transforms[{inverted:0b,write:1b,text_text:"all"}].all set from storage baba:main all_write_list
data modify storage baba:main rule_data.transforms append from storage baba:main rule_data.transforms[].all[]
data remove storage baba:main rule_data.transforms[{inverted:0b,text_text:"all",write:0b}]

# builtin rules: 'text is push', 'level is stop', 'cursor is select'
# can be disabled by inverted rules
execute if entity @s[scores={sprite=30442}] unless data storage baba:main rule_data.parsing.properties[{inverted:1b,text_text:"push"}] run data modify storage baba:main rule_data.properties append value "push"
execute if entity @s[scores={sprite=26837}] unless data storage baba:main rule_data.parsing.properties[{inverted:1b,text_text:"stop"}] run data modify storage baba:main rule_data.properties append value "stop"
execute if entity @s[scores={sprite=2526}] unless data storage baba:main rule_data.parsing.properties[{inverted:1b,text_text:"select"}] run data modify storage baba:main rule_data.properties append value "select"

data modify entity @s item.tag set from storage baba:main rule_data

tag @s[tag=prop.move] remove prop.move
execute if data storage baba:main rule_data{properties:["move"]} run tag @s add prop.move
tag @s[tag=prop.sleep] remove prop.sleep
execute if data storage baba:main rule_data{properties:["sleep"]} run tag @s add prop.sleep
tag @s[tag=prop.tele] remove prop.tele
execute if data storage baba:main rule_data{properties:["tele"]} run tag @s add prop.tele
tag @s[tag=prop.shift] remove prop.shift
execute if data storage baba:main rule_data{properties:["shift"]} run tag @s add prop.shift
tag @s[tag=prop.select] remove prop.select
execute if data storage baba:main rule_data{properties:["select"]} run tag @s add prop.select
tag @s[tag=prop.fall] remove prop.fall
execute if data storage baba:main rule_data{properties:["fall"]} run tag @s add prop.fall
tag @s[tag=prop.up] remove prop.up
execute if data storage baba:main rule_data{properties:["up"]} run tag @s add prop.up
tag @s[tag=prop.down] remove prop.down
execute if data storage baba:main rule_data{properties:["down"]} run tag @s add prop.down
tag @s[tag=prop.left] remove prop.left
execute if data storage baba:main rule_data{properties:["left"]} run tag @s add prop.left
tag @s[tag=prop.right] remove prop.right
execute if data storage baba:main rule_data{properties:["right"]} run tag @s add prop.right
tag @s[tag=prop.float] remove prop.float
execute if data storage baba:main rule_data{properties:["float"]} run tag @s add prop.float
tag @s[tag=prop.more] remove prop.more
execute if data storage baba:main rule_data{properties:["more"]} run tag @s add prop.more
tag @s[tag=prop.sink] remove prop.sink
execute if data storage baba:main rule_data{properties:["sink"]} run tag @s add prop.sink
tag @s[tag=prop.weak] remove prop.weak
execute if data storage baba:main rule_data{properties:["weak"]} run tag @s add prop.weak
tag @s[tag=prop.hot] remove prop.hot
execute if data storage baba:main rule_data{properties:["hot"]} run tag @s add prop.hot
tag @s[tag=prop.melt] remove prop.melt
execute if data storage baba:main rule_data{properties:["melt"]} run tag @s add prop.melt
tag @s[tag=prop.defeat] remove prop.defeat
execute if data storage baba:main rule_data{properties:["defeat"]} run tag @s add prop.defeat
tag @s[tag=prop.shut] remove prop.shut
execute if data storage baba:main rule_data{properties:["shut"]} run tag @s add prop.shut
tag @s[tag=prop.open] remove prop.open
execute if data storage baba:main rule_data{properties:["open"]} run tag @s add prop.open
tag @s[tag=prop.win] remove prop.win
execute if data storage baba:main rule_data{properties:["win"]} run tag @s add prop.win
tag @s[tag=prop.push] remove prop.push
execute if data storage baba:main rule_data{properties:["push"]} run tag @s add prop.push
tag @s[tag=prop.pull] remove prop.pull
execute if data storage baba:main rule_data{properties:["pull"]} run tag @s add prop.pull
tag @s[tag=prop.swap] remove prop.swap
execute if data storage baba:main rule_data{properties:["swap"]} run tag @s add prop.swap
tag @s[tag=prop.hide] remove prop.hide
execute if data storage baba:main rule_data{properties:["hide"]} run tag @s add prop.hide
tag @s[tag=prop.red] remove prop.red
execute if data storage baba:main rule_data{properties:["red"]} run tag @s add prop.red
tag @s[tag=prop.blue] remove prop.blue
execute if data storage baba:main rule_data{properties:["blue"]} run tag @s add prop.blue
tag @s[tag=prop.stop] remove prop.stop
execute if data storage baba:main rule_data{properties:["stop"]} run tag @s add prop.stop
tag @s[tag=prop.you] remove prop.you
execute if data storage baba:main rule_data{properties:["you"]} run tag @s add prop.you
