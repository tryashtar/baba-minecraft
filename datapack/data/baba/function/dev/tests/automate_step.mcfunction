execute store result score direction baba run data get storage baba:main moves[0]
function baba:board/step
data remove storage baba:main moves[0]
execute if score win baba matches 1 run function baba:dev/tests/automate_finished
execute if score win baba matches 0 unless data storage baba:main moves[0] run function baba:dev/tests/automate_finished
execute if data storage baba:main moves[0] run schedule function baba:dev/tests/automate_step 1t
