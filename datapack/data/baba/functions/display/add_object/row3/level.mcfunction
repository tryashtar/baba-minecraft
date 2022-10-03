data modify storage baba:main object_text[1] set value '{"translate":"baba.level.row3"}'
scoreboard players operation first_digit baba = @s number
scoreboard players operation first_digit baba %= #10 baba
execute if entity @s[tag=style.jelly,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.jelly.row3"}'
execute if entity @s[tag=style.moon,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.moon.row3"}'
execute if entity @s[tag=style.question_mark,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.question_mark.row3"}'
execute if entity @s[tag=style.island,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.island.row3"}'
execute if entity @s[tag=style.flower,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.flower.row3"}'
execute if entity @s[tag=style.abc,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.abc.row3"}'
execute if entity @s[tag=style.pillar,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.pillar.row3"}'
execute if entity @s[tag=style.square,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.square.row3"}'
execute if entity @s[tag=style.dust,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dust.row3"}'
execute if entity @s[tag=style.leaf,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.leaf.row3"}'
execute if entity @s[tag=style.skull,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.skull.row3"}'
execute if entity @s[tag=style.text,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.text.row3"}'
execute if entity @s[tag=style.tree,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.tree.row3"}'
execute if entity @s[tag=style.snow,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.snow.row3"}'
execute if entity @s[tag=style.dot,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dot.row3"}'
execute if entity @s[tag=style.dice,scores={number=1,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-1.row3"}'
execute if entity @s[tag=style.dice,scores={number=2,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-2.row3"}'
execute if entity @s[tag=style.dice,scores={number=3,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-3.row3"}'
execute if entity @s[tag=style.dice,scores={number=4,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-4.row3"}'
execute if entity @s[tag=style.dice,scores={number=5,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-5.row3"}'
execute if entity @s[tag=style.dice,scores={number=6,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-6.row3"}'
execute if entity @s[tag=style.dice,scores={number=7,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-7.row3"}'
execute if entity @s[tag=style.dice,scores={number=8,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-8.row3"}'
execute if entity @s[tag=style.dice,scores={number=9,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-9.row3"}'
execute if entity @s[tag=style.dice,scores={number=10,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-10.row3"}'
execute if entity @s[tag=style.dice,scores={number=11,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-11.row3"}'
execute if entity @s[tag=style.letter,scores={number=1,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-1.row3"}'
execute if entity @s[tag=style.letter,scores={number=2,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-2.row3"}'
execute if entity @s[tag=style.letter,scores={number=3,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-3.row3"}'
execute if entity @s[tag=style.letter,scores={number=4,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-4.row3"}'
execute if entity @s[tag=style.letter,scores={number=5,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-5.row3"}'
execute if entity @s[tag=style.letter,scores={number=6,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-6.row3"}'
execute if entity @s[tag=style.letter,scores={number=7,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-7.row3"}'
execute if entity @s[tag=style.letter,scores={number=8,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-8.row3"}'
execute if entity @s[tag=style.letter,scores={number=9,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-9.row3"}'
execute if entity @s[tag=style.digit,scores={number=0..9,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-0-9.row3"}'
execute if score first_digit baba matches 0 if entity @s[tag=style.digit,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-0.row3"}'
execute if entity @s[tag=style.digit,scores={number=10..19,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-10-19.row3"}'
execute if score first_digit baba matches 1 if entity @s[tag=style.digit,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-1.row3"}'
execute if entity @s[tag=style.digit,scores={number=20..29,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-20-29.row3"}'
execute if score first_digit baba matches 2 if entity @s[tag=style.digit,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-2.row3"}'
execute if entity @s[tag=style.digit,scores={number=30..39,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-30-39.row3"}'
execute if score first_digit baba matches 3 if entity @s[tag=style.digit,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-3.row3"}'
execute if entity @s[tag=style.digit,scores={number=40..49,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-40-49.row3"}'
execute if score first_digit baba matches 4 if entity @s[tag=style.digit,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-4.row3"}'
execute if entity @s[tag=style.digit,scores={number=50..59,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-50-59.row3"}'
execute if score first_digit baba matches 5 if entity @s[tag=style.digit,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-5.row3"}'
execute if entity @s[tag=style.digit,scores={number=60..69,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-60-69.row3"}'
execute if score first_digit baba matches 6 if entity @s[tag=style.digit,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-6.row3"}'
execute if entity @s[tag=style.digit,scores={number=70..79,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-70-79.row3"}'
execute if score first_digit baba matches 7 if entity @s[tag=style.digit,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-7.row3"}'
execute if entity @s[tag=style.digit,scores={number=80..89,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-80-89.row3"}'
execute if score first_digit baba matches 8 if entity @s[tag=style.digit,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-8.row3"}'
execute if entity @s[tag=style.digit,scores={number=90..99,color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-90-99.row3"}'
execute if score first_digit baba matches 9 if entity @s[tag=style.digit,scores={color=22}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-9.row3"}'
