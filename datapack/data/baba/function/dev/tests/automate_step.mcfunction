execute store result score direction baba run data get entity @s data.moves[0]
function baba:board/step
data remove entity @s data.moves[0]
execute if score win baba matches 1 run function baba:dev/tests/automate_finished
execute if score win baba matches 0 unless data entity @s data.moves[0] run function baba:dev/tests/automate_finished
