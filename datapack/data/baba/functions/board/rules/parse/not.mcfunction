execute if data storage baba:main parsing.state{not:1b} store success storage baba:main parsing.inverted byte 1 unless data storage baba:main parsing{inverted:1b}
execute unless data storage baba:main parsing.state{not:1b} run function baba:board/rules/parse/unexpected
