execute if data storage baba:main parsing.state{infix:"none"} run data modify storage baba:main parsing.unexpected set value 1b
execute if data storage baba:main parsing.state{infix:"ready"} run function baba:board/rules/parse/add/infix
