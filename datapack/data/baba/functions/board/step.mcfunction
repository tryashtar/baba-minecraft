# rules are parsed multiple times per step, since various actions can move, create, or destroy text
# however, objects can only transform once per step, to ensure back-and-forth transformations work correctly
tag @e[type=armor_stand,tag=baba.object,tag=transformed] remove transformed

# process movement in batches: you, then move, then shift
# if anything in a batch fails to move, try again until everything either succeeds or fails
# additionally, anything can only move once per batch
# these ensure that, for example, a plus sign of moving objects with 'push' or 'stop' move correctly
execute if score direction baba matches 1.. run function baba:board/movement/process/you
tag @e[type=armor_stand,tag=baba.object,tag=move_success] remove move_success
tag @e[type=armor_stand,tag=baba.object,tag=move_done] remove move_done
function baba:board/movement/process/move
execute as @e[type=armor_stand,tag=baba.object,tag=!move_success,nbt={HandItems:[{tag:{properties:["move"]}}]}] at @s run function baba:board/movement/attempt/move_turnaround
tag @e[type=armor_stand,tag=baba.object,tag=move_success] remove move_success
tag @e[type=armor_stand,tag=baba.object,tag=move_done] remove move_done
function baba:board/movement/process/shift
tag @e[type=armor_stand,tag=baba.object,tag=move_success] remove move_success
tag @e[type=armor_stand,tag=baba.object,tag=move_done] remove move_done
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["shift"]}}]}] at @s run scoreboard players operation @e[type=armor_stand,tag=baba.object,distance=..0.1] facing = @s facing

execute if score direction baba matches 1.. as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["select"]}}]}] at @s run function baba:board/movement/select

function baba:board/rules/update
execute as @e[type=armor_stand,tag=baba.object,tag=!transformed,nbt={HandItems:[{tag:{transforms:[{}]}}]}] at @s run function baba:board/interact/transform
execute if entity @e[type=armor_stand,tag=baba.object,tag=transformed,limit=1] run function baba:board/rules/update_transformed

# each property is checked in turn, not each object
scoreboard players set @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["up"]}}]}] facing 1
scoreboard players set @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["down"]}}]}] facing 2
scoreboard players set @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["left"]}}]}] facing 3
scoreboard players set @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["right"]}}]}] facing 4
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["sink"]}}]}] at @s run function baba:board/interact/sink
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["weak"]}}]}] at @s run function baba:board/interact/weak
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["hot"]}}]}] at @s run function baba:board/interact/hot
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["defeat"]}}]}] at @s run function baba:board/interact/defeat
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["shut"]}}]}] at @s run function baba:board/interact/shut
execute as @e[type=armor_stand,tag=baba.object] if data entity @s HandItems[0].tag.make[0] at @s run function baba:board/interact/make
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["win"]}}]}] at @s run function baba:board/interact/win

function baba:board/rules/update

# graphical updates
execute as @e[type=armor_stand,tag=baba.object,tag=connector] at @s run function baba:board/graphics/connector
execute as @e[type=armor_stand,tag=baba.object,nbt=!{HandItems:[{tag:{properties:["sleep"]}}]}] run function baba:board/graphics/frame
execute as @e[type=armor_stand,tag=baba.object] at @s unless block ~ ~-1 ~ black_concrete run function baba:board/interact/destroy

scoreboard players add @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["float"]}}]}] z_layer 100
execute if score text_enabled baba matches 1 unless entity @e[type=armor_stand,tag=baba.object,scores={move_frame=0..}] run function baba:display/text/update
execute as @e[type=armor_stand,tag=baba.object] run function baba:display/stand/update
scoreboard players remove @e[type=armor_stand,tag=baba.object,scores={z_layer=100..}] z_layer 100

execute as @e[type=marker,tag=baba.space] at @s run function baba:board/history/record
# if nothing changed, don't record this step
execute unless entity @e[type=marker,tag=baba.space,scores={repeats=1}] run scoreboard players remove @e[type=marker,tag=baba.space] repeats 1
