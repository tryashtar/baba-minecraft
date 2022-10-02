data modify storage baba:main parsing append value {text:[]}
data modify storage baba:main parsing[-1].property set from entity @s data.text
function baba:board/rules/parse/track
