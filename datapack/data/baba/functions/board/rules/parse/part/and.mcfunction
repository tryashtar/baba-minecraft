execute if data storage baba:main parsing.state{and:"none"} run data modify storage baba:main parsing.finished set value 1b
execute unless data storage baba:main parsing.state{and:"none"} run data modify storage baba:main parsing.text_ids append from storage baba:main parsing.ids[]
execute if data storage baba:main parsing.state{and:"prefix"} run data modify storage baba:main parsing.state set value {noun:"none",verb:"none",property:"none",and:"none",not:"self",prefix:"ready",infix:"none"}
execute if data storage baba:main parsing.state{and:"subject"} run data modify storage baba:main parsing.state set value {noun:"subject",verb:"none",property:"none",and:"none",not:"self",prefix:"none",infix:"none"}
execute if data storage baba:main parsing.state{and:"parameter"} run data modify storage baba:main parsing.state set value {noun:"parameter",verb:"none",property:"none",and:"none",not:"self",prefix:"none",infix:"ready"}
execute if data storage baba:main parsing.state{and:"effect"} run data modify storage baba:main parsing.state set value {noun:"effect",verb:"ready",property:"ready",and:"none",not:"effect",prefix:"none",infix:"none"}
