scoreboard players set facing baba 0
execute if score direction baba matches 1.. run function baba:board/movement/process/you
tag @e[type=marker,tag=baba.object,tag=move_success] remove move_success
tag @e[type=marker,tag=baba.object,tag=move_done] remove move_done
function baba:board/movement/process/move
execute as @e[type=marker,tag=baba.object,tag=!move_success,nbt={data:{properties:["move"]}}] at @s run function baba:board/movement/attempt/move_turnaround
tag @e[type=marker,tag=baba.object,tag=move_success] remove move_success
tag @e[type=marker,tag=baba.object,tag=move_done] remove move_done
function baba:board/movement/process/shift
tag @e[type=marker,tag=baba.object,tag=move_success] remove move_success
tag @e[type=marker,tag=baba.object,tag=move_done] remove move_done

tag @e[type=marker,tag=baba.object,tag=transformed] remove transformed
function baba:board/rules/update

execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["sink"]}}] at @s run function baba:board/interact/sink
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["weak"]}}] at @s run function baba:board/interact/weak
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["hot"]}}] at @s run function baba:board/interact/hot
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["defeat"]}}] at @s run function baba:board/interact/defeat
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["shut"]}}] at @s run function baba:board/interact/shut

execute as @e[type=marker,tag=baba.object,tag=connector] at @s run function baba:board/graphics/connector
execute as @e[type=marker,tag=baba.object] run function baba:board/graphics/frame
execute as @e[type=marker,tag=baba.object] at @s unless block ~ -1 ~ glass run kill @s

function baba:display/update_text
