# the entity's property data aren't yet in the format we like, in order for the 'Tags' trick to work
# here, we merge 'writes' with 'transforms', handle 'A is A' and 'A is not A', and throw away inverted properties
data modify storage baba:main rule_data set from entity @s item.tag
execute if data storage baba:main rule_data.parsing.writes[0] run data modify storage baba:main rule_data.parsing.writes[].write set value 1b
execute if data storage baba:main rule_data.parsing.transforms[0] run data modify storage baba:main rule_data.parsing.transforms[].write set value 0b
execute if data storage baba:main rule_data.parsing.transforms[{inverted:1b,text:397973}] run data remove storage baba:main rule_data.parsing.writes
execute if data storage baba:main rule_data.parsing{delete:0b,block_transforms:1b} run data remove storage baba:main rule_data.parsing.writes[]
execute if data storage baba:main rule_data.parsing{delete:0b,block_transforms:1b} run data remove storage baba:main rule_data.parsing.transforms[]
execute if data storage baba:main rule_data.parsing{delete:1b} unless data storage baba:main rule_data.parsing.transforms[{inverted:0b}] run function baba:board/interact/remove

data modify storage baba:main rule_data merge value {transforms:[],properties:[],has:[],make:[]}
data modify storage baba:main rule_data.properties append from storage baba:main rule_data.parsing.properties[{inverted:0b}].text
data modify storage baba:main rule_data.has append from storage baba:main rule_data.parsing.has[{inverted:0b}]
data modify storage baba:main rule_data.make append from storage baba:main rule_data.parsing.make[{inverted:0b}]
data modify storage baba:main rule_data.transforms append from storage baba:main rule_data.parsing.transforms[{inverted:0b}]
data modify storage baba:main rule_data.transforms append from storage baba:main rule_data.parsing.writes[{inverted:0b}]
execute if data storage baba:main rule_data.transforms[{inverted:0b,write:0b,text:1065}] run data modify storage baba:main rule_data.transforms[{inverted:0b,write:0b,text:1065}].all set from storage baba:main all_list
execute if data storage baba:main rule_data.transforms[{inverted:0b,write:1b,text:1065}] run data modify storage baba:main rule_data.transforms[{inverted:0b,write:1b,text:1065}].all set from storage baba:main all_write_list
data modify storage baba:main rule_data.transforms append from storage baba:main rule_data.transforms[].all[]
data remove storage baba:main rule_data.transforms[{inverted:0b,text:1065,write:0b}]

# builtin rules: 'text is push', 'level is stop', 'cursor is select'
# can be disabled by inverted rules
execute if entity @s[scores={sprite=397973}] unless data storage baba:main rule_data.parsing.properties[{inverted:1b,text:330758}] run data modify storage baba:main rule_data.properties append value 330758
execute if entity @s[scores={sprite=6491892}] unless data storage baba:main rule_data.parsing.properties[{inverted:1b,text:388978}] run data modify storage baba:main rule_data.properties append value 388978
execute if entity @s[scores={sprite=54575550}] unless data storage baba:main rule_data.parsing.properties[{inverted:1b,text:275526380}] run data modify storage baba:main rule_data.properties append value 275526380

data modify entity @s item.tag set from storage baba:main rule_data

tag @s[tag=prop.move] remove prop.move
execute if data storage baba:main rule_data{properties:[267413]} run tag @s add prop.move
tag @s[tag=prop.sleep] remove prop.sleep
execute if data storage baba:main rule_data{properties:[10337371]} run tag @s add prop.sleep
tag @s[tag=prop.tele] remove prop.tele
execute if data storage baba:main rule_data{properties:[397634]} run tag @s add prop.tele
tag @s[tag=prop.shift] remove prop.shift
execute if data storage baba:main rule_data{properties:[10261586]} run tag @s add prop.shift
tag @s[tag=prop.select] remove prop.select
execute if data storage baba:main rule_data{properties:[275526380]} run tag @s add prop.select
tag @s[tag=prop.fall] remove prop.fall
execute if data storage baba:main rule_data{properties:[119163]} run tag @s add prop.fall
tag @s[tag=prop.up] remove prop.up
execute if data storage baba:main rule_data{properties:[583]} run tag @s add prop.up
tag @s[tag=prop.down] remove prop.down
execute if data storage baba:main rule_data{properties:[90302]} run tag @s add prop.down
tag @s[tag=prop.left] remove prop.left
execute if data storage baba:main rule_data{properties:[240023]} run tag @s add prop.left
tag @s[tag=prop.right] remove prop.right
execute if data storage baba:main rule_data{properties:[9748424]} run tag @s add prop.right
tag @s[tag=prop.float] remove prop.float
execute if data storage baba:main rule_data{properties:[3435824]} run tag @s add prop.float
tag @s[tag=prop.more] remove prop.more
execute if data storage baba:main rule_data{properties:[267305]} run tag @s add prop.more
tag @s[tag=prop.sink] remove prop.sink
execute if data storage baba:main rule_data{properties:[380927]} run tag @s add prop.sink
tag @s[tag=prop.weak] remove prop.weak
execute if data storage baba:main rule_data{properties:[456392]} run tag @s add prop.weak
tag @s[tag=prop.hot] remove prop.hot
execute if data storage baba:main rule_data{properties:[6257]} run tag @s add prop.hot
tag @s[tag=prop.melt] remove prop.melt
execute if data storage baba:main rule_data{properties:[259868]} run tag @s add prop.melt
tag @s[tag=prop.defeat] remove prop.defeat
execute if data storage baba:main rule_data{properties:[60174623]} run tag @s add prop.defeat
tag @s[tag=prop.shut] remove prop.shut
execute if data storage baba:main rule_data{properties:[380396]} run tag @s add prop.shut
tag @s[tag=prop.open] remove prop.open
execute if data storage baba:main rule_data{properties:[307058]} run tag @s add prop.open
tag @s[tag=prop.win] remove prop.win
execute if data storage baba:main rule_data{properties:[17024]} run tag @s add prop.win
tag @s[tag=prop.push] remove prop.push
execute if data storage baba:main rule_data{properties:[330758]} run tag @s add prop.push
tag @s[tag=prop.pull] remove prop.pull
execute if data storage baba:main rule_data{properties:[330573]} run tag @s add prop.pull
tag @s[tag=prop.swap] remove prop.swap
execute if data storage baba:main rule_data{properties:[390787]} run tag @s add prop.swap
tag @s[tag=prop.hide] remove prop.hide
execute if data storage baba:main rule_data{properties:[164138]} run tag @s add prop.hide
tag @s[tag=prop.red] remove prop.red
execute if data storage baba:main rule_data{properties:[13261]} run tag @s add prop.red
tag @s[tag=prop.blue] remove prop.blue
execute if data storage baba:main rule_data{properties:[48686]} run tag @s add prop.blue
tag @s[tag=prop.stop] remove prop.stop
execute if data storage baba:main rule_data{properties:[388978]} run tag @s add prop.stop
tag @s[tag=prop.you] remove prop.you
execute if data storage baba:main rule_data{properties:[18651]} run tag @s add prop.you
