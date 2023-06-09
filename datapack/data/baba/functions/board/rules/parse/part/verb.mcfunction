scoreboard players set parsed baba 1
execute if data storage baba:main parsing.state{verb:"none"} run data modify storage baba:main parsing.unexpected set value 1b
execute if data storage baba:main parsing.state{verb:"ready"} run function baba:board/rules/parse/add/verb
