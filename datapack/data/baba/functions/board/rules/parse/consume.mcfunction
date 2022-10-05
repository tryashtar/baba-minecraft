scoreboard players add text_id baba 1
scoreboard players operation @s[scores={text_id=0}] text_id = text_id baba
execute if entity @s[tag=part.noun] store success entity @s data.parsing.inverted byte 1 if data entity @s data.parsing{inverted:0b}
