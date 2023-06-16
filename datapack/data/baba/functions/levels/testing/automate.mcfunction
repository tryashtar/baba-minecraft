execute store result score direction baba run data get storage baba:main moves[0]
function baba:board/step
data remove storage baba:main moves[0]
execute unless data storage baba:main moves[0] run function baba:levels/testing/level_finished
execute if data storage baba:main moves[0] run schedule function baba:levels/testing/automate 1t
