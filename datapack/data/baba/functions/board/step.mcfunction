# rules are parsed multiple times per step, since various actions can move, create, or destroy text
# however, objects can only transform once per step, to ensure back-and-forth transformations work correctly
tag @e[type=marker,tag=baba.object,tag=transformed] remove transformed

# process movement in batches: you, then move, then shift
# if anything in a batch fails to move, try again until everything either succeeds or fails
# additionally, anything can only move once per batch
# these ensure that, for example, a plus sign of moving objects with 'push' or 'stop' move correctly
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
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["shift"]}}] at @s run scoreboard players operation @e[type=marker,tag=baba.object,distance=..0.1] facing = @s facing

execute if score direction baba matches 1.. as @e[type=marker,tag=baba.object,nbt={data:{properties:["select"]}}] at @s run function baba:board/movement/select

function baba:board/rules/update
execute as @e[type=marker,tag=baba.object,tag=!transformed,nbt={data:{transforms:[{}]}}] at @s run function baba:board/interact/transform
execute if entity @e[type=marker,tag=baba.object,tag=transformed,limit=1] run function baba:board/rules/update_transformed

# each property is checked in turn, not each object
scoreboard players set @e[type=marker,tag=baba.object,nbt={data:{properties:["up"]}}] facing 1
scoreboard players set @e[type=marker,tag=baba.object,nbt={data:{properties:["down"]}}] facing 2
scoreboard players set @e[type=marker,tag=baba.object,nbt={data:{properties:["left"]}}] facing 3
scoreboard players set @e[type=marker,tag=baba.object,nbt={data:{properties:["right"]}}] facing 4
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["sink"]}}] at @s run function baba:board/interact/sink
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["weak"]}}] at @s run function baba:board/interact/weak
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["hot"]}}] at @s run function baba:board/interact/hot
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["defeat"]}}] at @s run function baba:board/interact/defeat
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["shut"]}}] at @s run function baba:board/interact/shut
execute as @e[type=marker,tag=baba.object] if data entity @s data.make[0] at @s run function baba:board/interact/make
execute as @e[type=marker,tag=baba.object,nbt={data:{properties:["win"]}}] at @s run function baba:board/interact/win

function baba:board/rules/update

# graphical updates
execute as @e[type=marker,tag=baba.object,tag=connector] at @s run function baba:board/graphics/connector
execute as @e[type=marker,tag=baba.object,nbt=!{data:{properties:["sleep"]}}] run function baba:board/graphics/frame
execute as @e[type=marker,tag=baba.object] at @s unless block ~ ~-1 ~ black_concrete run function baba:board/interact/destroy

execute unless entity @e[type=marker,tag=baba.object,scores={move_frame=0..}] run function baba:display/update

execute as @e[type=marker,tag=baba.space] at @s run function baba:board/history/record
# if nothing changed, don't record this step
execute unless entity @e[type=marker,tag=baba.space,scores={repeats=1}] run scoreboard players remove @e[type=marker,tag=baba.space] repeats 1
