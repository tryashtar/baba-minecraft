data modify storage baba:main parsing append value {text:[]}
data modify storage baba:main parsing[-1].sprite set from entity @s data.text
function baba:board/rules/parse/before_verb/track_text
