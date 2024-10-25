tag @e[type=item_display,tag=baba.object,tag=active,tag=current_word,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] add all_rules
tag @e[type=item_display,tag=baba.object,tag=active,tag=current_not,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] add all_rules
tag @e[type=item_display,tag=baba.object,tag=active,tag=current_not,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] remove current_not
data modify storage baba:main parsing.rules1.text_ids append from storage baba:main parsing.word_ids[]
data modify storage baba:main parsing.rules1.text_ids append from storage baba:main parsing.not_ids[]
data modify storage baba:main parsing.not_ids set value []
data modify storage baba:main parsing.rules1.conditions append value {}
execute store result storage baba:main parsing.rules1.conditions[-1].condition int 1 run scoreboard players get word baba
data modify storage baba:main parsing.rules1.conditions[-1].condition_text set from storage baba:main parsing.word_text
data modify storage baba:main parsing.rules1.conditions[-1].inverted set from storage baba:main parsing.inverted
data modify storage baba:main parsing.inverted set value 0b

data modify storage baba:main parsing.state set value {noun:"subject",verb:"none",property:"none",and:"prefix",not:"subject",prefix:"none",infix:"none"}
