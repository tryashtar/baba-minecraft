execute if data storage baba:main parsing.state{noun:"none"} run data modify storage baba:main parsing.finished set value 1b
execute if data storage baba:main parsing.state{noun:"subject"} run function baba:board/rules/parse/add/subject
execute if data storage baba:main parsing.state{noun:"parameter"} run function baba:board/rules/parse/add/parameter
execute if data storage baba:main parsing.state{noun:"effect"} run function baba:board/rules/parse/add/effect
