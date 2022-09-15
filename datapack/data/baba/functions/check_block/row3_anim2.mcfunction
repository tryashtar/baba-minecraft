data modify storage baba:main text append value '" "'
execute if block ~ ~ ~ diamond_block run data modify storage baba:main text[-1] set value '{"translate":"baba.text.baba.row3.anim2"}'
execute if block ~ ~ ~ redstone_block run data modify storage baba:main text[-1] set value '{"translate":"baba.text.is.row3.anim2"}'
execute if block ~ ~ ~ emerald_block run data modify storage baba:main text[-1] set value '{"translate":"baba.text.you.row3.anim2"}'
