tag @e[type=item_display,tag=last_verb] remove last_verb
tag @e[type=item_display,tag=current_word] add last_verb
data modify storage baba:main parsing.verb_ids set value []
data modify storage baba:main parsing.verb_ids append from storage baba:main parsing.word_ids[]
execute store result storage baba:main parsing.verb int 1 run scoreboard players get word baba
data modify storage baba:main parsing.verb_text set from storage baba:main parsing.word_text

# only "is" and "write" are allowed to have properties as effects
# we don't want to assign to state.property because it will get reset after reading a noun followed by "and"
data modify storage baba:main parsing.allow_properties set value 0b
execute if score word baba matches 262 run data modify storage baba:main parsing.allow_properties set value 1b
execute if score word baba matches 12584543 run data modify storage baba:main parsing.allow_properties set value 1b

data modify storage baba:main parsing.state set value {noun:"effect",verb:"none",property:"effect",and:"none",not:"effect",prefix:"none",infix:"none"}
