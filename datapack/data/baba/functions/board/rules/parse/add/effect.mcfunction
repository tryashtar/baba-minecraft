tag @e[type=item_display,tag=baba.object,tag=maybe_all_rules] add all_rules
tag @e[type=item_display,tag=baba.object,tag=maybe_all_rules] remove maybe_all_rules
data modify storage baba:main parsing.all_ids append from storage baba:main parsing.maybe_all_ids[]
data modify storage baba:main parsing.maybe_all_ids set value []
execute store result score rules baba run data get storage baba:main parsing.rules2
scoreboard players operation @e[type=item_display,tag=baba.object,tag=current_word] text_used += rules baba
scoreboard players operation @e[type=item_display,tag=baba.object,tag=current_not] text_used += rules baba
scoreboard players operation @e[type=item_display,tag=baba.object,tag=last_verb] text_used += rules baba
tag @e[type=item_display,tag=baba.object,tag=final_effect] remove final_effect
tag @e[type=item_display,tag=baba.object,tag=current_word] add final_effect
tag @e[type=item_display,tag=baba.object,tag=current_not] add final_effect
tag @e[type=item_display,tag=baba.object,tag=current_not] remove current_not
data modify storage baba:main parsing.complete set value 1b
data modify storage baba:main parsing.rules3 append from storage baba:main parsing.rules2
data modify storage baba:main parsing.rules3[-1][].text_ids append from storage baba:main parsing.word_ids[]
data modify storage baba:main parsing.rules3[-1][].text_ids append from storage baba:main parsing.not_ids[]
data modify storage baba:main parsing.rules3[-1][].text_ids append from storage baba:main parsing.verb_ids[]
data modify storage baba:main parsing.not_ids set value []
data modify storage baba:main parsing.rules3[-1][].verb set from storage baba:main parsing.verb
data modify storage baba:main parsing.rules3[-1][].verb_text set from storage baba:main parsing.verb_text
execute store result storage baba:main parsing.rules3[-1][].effect.text int 1 run scoreboard players get word baba
data modify storage baba:main parsing.rules3[-1][].effect.text_text set from storage baba:main parsing.word_text
data modify storage baba:main parsing.rules3[-1][].effect.inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.rules3[-1][].effect.part set from storage baba:main parsing.effect_part
data modify storage baba:main parsing.inverted set value 0b

data modify storage baba:main parsing.state set value {noun:"none",verb:"none",property:"none",and:"effect",not:"none",prefix:"none",infix:"none"}
