scoreboard players set parsed baba 1
tag @e[type=item_display,tag=baba.object,tag=current_word] add current_not
execute if data storage baba:main parsing.state{not:"none"} run data modify storage baba:main parsing.unexpected set value 1b
execute unless data storage baba:main parsing.state{not:"none"} run data modify storage baba:main parsing.not_ids append from storage baba:main parsing.word_ids[]
execute unless data storage baba:main parsing.state{not:"none"} store success storage baba:main parsing.inverted byte 1 unless data storage baba:main parsing{inverted:1b}
execute if data storage baba:main parsing.state{not:"subject"} run data modify storage baba:main parsing.state set value {noun:"subject",verb:"none",property:"none",and:"none",not:"self",prefix:"none",infix:"none"}
execute if data storage baba:main parsing.state{not:"infix"} run data modify storage baba:main parsing.state set value {noun:"none",verb:"none",property:"none",and:"none",not:"self",prefix:"none",infix:"ready"}
execute if data storage baba:main parsing.state{not:"parameter"} run data modify storage baba:main parsing.state set value {noun:"parameter",verb:"none",property:"none",and:"none",not:"self",prefix:"none",infix:"none"}
execute if data storage baba:main parsing.state{not:"effect"} run data modify storage baba:main parsing.state set value {noun:"effect",verb:"none",property:"effect",and:"none",not:"self",prefix:"none",infix:"none"}
