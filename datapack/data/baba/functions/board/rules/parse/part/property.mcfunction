scoreboard players set parsed baba 1
execute if data storage baba:main parsing.state{property:"none"} run data modify storage baba:main parsing.unexpected set value 1b
execute if data storage baba:main parsing{allow_properties:0b,state:{property:"effect"}} run data modify storage baba:main parsing.unexpected set value 1b
execute if data storage baba:main parsing{allow_properties:1b,state:{property:"effect"}} run data modify storage baba:main parsing.effect_part set value "property"
execute if data storage baba:main parsing{allow_properties:1b,state:{property:"effect"}} run function baba:board/rules/parse/add/effect
execute if data storage baba:main parsing{allow_facing:0b,state:{property:"parameter"}} run data modify storage baba:main parsing.unexpected set value 1b
execute if data storage baba:main parsing{allow_facing:1b,state:{property:"parameter"}} unless score word baba matches 583 unless score word baba matches 90302 unless score word baba matches 240023 unless score word baba matches 9748424 run data modify storage baba:main parsing.unexpected set value 1b
execute if data storage baba:main parsing{allow_facing:1b,state:{property:"parameter"}} unless data storage baba:main parsing{unexpected:1b} run function baba:board/rules/parse/add/parameter
