execute unless data storage baba:main parsing.state{verb:"ready"} run function baba:board/rules/parse/unexpected
execute if data storage baba:main parsing.state{verb:"ready"} run function baba:board/rules/parse/add/verb
