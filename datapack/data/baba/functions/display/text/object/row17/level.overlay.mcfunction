scoreboard players operation first_digit baba = @s number
scoreboard players operation first_digit baba %= #10 baba
execute if entity @s[tag=style.jelly] run data modify storage baba:main text append value '{"translate":"baba.level_icon.jelly.row17","color":"#ffffff"}'
execute if entity @s[tag=style.moon] run data modify storage baba:main text append value '{"translate":"baba.level_icon.moon.row17","color":"#ffffff"}'
execute if entity @s[tag=style.question_mark] run data modify storage baba:main text append value '{"translate":"baba.level_icon.question_mark.row17","color":"#ffffff"}'
execute if entity @s[tag=style.island] run data modify storage baba:main text append value '{"translate":"baba.level_icon.island.row17","color":"#ffffff"}'
execute if entity @s[tag=style.flower] run data modify storage baba:main text append value '{"translate":"baba.level_icon.flower.row17","color":"#ffffff"}'
execute if entity @s[tag=style.abc] run data modify storage baba:main text append value '{"translate":"baba.level_icon.abc.row17","color":"#ffffff"}'
execute if entity @s[tag=style.pillar] run data modify storage baba:main text append value '{"translate":"baba.level_icon.pillar.row17","color":"#ffffff"}'
execute if entity @s[tag=style.square] run data modify storage baba:main text append value '{"translate":"baba.level_icon.square.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dust] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dust.row17","color":"#ffffff"}'
execute if entity @s[tag=style.leaf] run data modify storage baba:main text append value '{"translate":"baba.level_icon.leaf.row17","color":"#ffffff"}'
execute if entity @s[tag=style.skull] run data modify storage baba:main text append value '{"translate":"baba.level_icon.skull.row17","color":"#ffffff"}'
execute if entity @s[tag=style.text] run data modify storage baba:main text append value '{"translate":"baba.level_icon.text.row17","color":"#ffffff"}'
execute if entity @s[tag=style.tree] run data modify storage baba:main text append value '{"translate":"baba.level_icon.tree.row17","color":"#ffffff"}'
execute if entity @s[tag=style.snow] run data modify storage baba:main text append value '{"translate":"baba.level_icon.snow.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dot] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dot.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=1}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-1.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=2}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-2.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=3}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-3.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=4}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-4.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=5}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-5.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=6}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-6.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=7}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-7.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=8}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-8.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=9}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-9.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=10}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-10.row17","color":"#ffffff"}'
execute if entity @s[tag=style.dice,scores={number=11}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.dice.number-11.row17","color":"#ffffff"}'
execute if entity @s[tag=style.letter,scores={number=1}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-1.row17","color":"#ffffff"}'
execute if entity @s[tag=style.letter,scores={number=2}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-2.row17","color":"#ffffff"}'
execute if entity @s[tag=style.letter,scores={number=3}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-3.row17","color":"#ffffff"}'
execute if entity @s[tag=style.letter,scores={number=4}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-4.row17","color":"#ffffff"}'
execute if entity @s[tag=style.letter,scores={number=5}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-5.row17","color":"#ffffff"}'
execute if entity @s[tag=style.letter,scores={number=6}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-6.row17","color":"#ffffff"}'
execute if entity @s[tag=style.letter,scores={number=7}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-7.row17","color":"#ffffff"}'
execute if entity @s[tag=style.letter,scores={number=8}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-8.row17","color":"#ffffff"}'
execute if entity @s[tag=style.letter,scores={number=9}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.letter.number-9.row17","color":"#ffffff"}'
execute if entity @s[tag=style.digit,scores={number=0..9}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-0-9.row17","color":"#ffffff"}'
execute if score first_digit baba matches 0 if entity @s[tag=style.digit] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-0.row17","color":"#ffffff"}'
execute if entity @s[tag=style.digit,scores={number=10..19}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-10-19.row17","color":"#ffffff"}'
execute if score first_digit baba matches 1 if entity @s[tag=style.digit] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-1.row17","color":"#ffffff"}'
execute if entity @s[tag=style.digit,scores={number=20..29}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-20-29.row17","color":"#ffffff"}'
execute if score first_digit baba matches 2 if entity @s[tag=style.digit] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-2.row17","color":"#ffffff"}'
execute if entity @s[tag=style.digit,scores={number=30..39}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-30-39.row17","color":"#ffffff"}'
execute if score first_digit baba matches 3 if entity @s[tag=style.digit] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-3.row17","color":"#ffffff"}'
execute if entity @s[tag=style.digit,scores={number=40..49}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-40-49.row17","color":"#ffffff"}'
execute if score first_digit baba matches 4 if entity @s[tag=style.digit] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-4.row17","color":"#ffffff"}'
execute if entity @s[tag=style.digit,scores={number=50..59}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-50-59.row17","color":"#ffffff"}'
execute if score first_digit baba matches 5 if entity @s[tag=style.digit] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-5.row17","color":"#ffffff"}'
execute if entity @s[tag=style.digit,scores={number=60..69}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-60-69.row17","color":"#ffffff"}'
execute if score first_digit baba matches 6 if entity @s[tag=style.digit] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-6.row17","color":"#ffffff"}'
execute if entity @s[tag=style.digit,scores={number=70..79}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-70-79.row17","color":"#ffffff"}'
execute if score first_digit baba matches 7 if entity @s[tag=style.digit] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-7.row17","color":"#ffffff"}'
execute if entity @s[tag=style.digit,scores={number=80..89}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-80-89.row17","color":"#ffffff"}'
execute if score first_digit baba matches 8 if entity @s[tag=style.digit] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-8.row17","color":"#ffffff"}'
execute if entity @s[tag=style.digit,scores={number=90..99}] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.number-90-99.row17","color":"#ffffff"}'
execute if score first_digit baba matches 9 if entity @s[tag=style.digit] run data modify storage baba:main text append value '{"translate":"baba.level_icon.digit.first_digit-9.row17","color":"#ffffff"}'
