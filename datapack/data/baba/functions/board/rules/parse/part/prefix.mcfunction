execute if data storage baba:main parsing.state{prefix:"none"} run data modify storage baba:main parsing.finished set value 1b
execute if data storage baba:main parsing.state{prefix:"ready"} run function baba:board/rules/parse/add/prefix
