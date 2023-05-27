scoreboard players add melted baba 1
function baba:display/particle/spawn/melt
execute if score melted baba matches 1..5 run function baba:display/particle/spawn/melt
execute if score melted baba matches 1 run function baba:display/particle/spawn/melt
execute if score melted baba matches 1 run function baba:display/particle/spawn/melt
execute if score melted baba matches 1 run function baba:display/particle/spawn/melt
function baba:board/interact/destroy
