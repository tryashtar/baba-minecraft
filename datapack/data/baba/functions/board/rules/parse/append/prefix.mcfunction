function baba:board/rules/parse/track
data modify storage baba:main prefixes append value {}
data modify storage baba:main prefixes[-1].condition set from entity @s data.text
