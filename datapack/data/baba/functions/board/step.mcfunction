# process movement in batches: you, then move, then shift
# if anything in a batch fails to move, try again until everything either succeeds or fails
# additionally, anything can only move once per batch
# these ensure that, for example, a plus sign of moving objects with 'push' or 'stop' move correctly
# it also allows objects with 'push' to stack when two 'shift' objects send them to the same tile
scoreboard players set moved baba 0
execute if score direction baba matches 1.. run function baba:board/movement/process/you
tag @e[type=armor_stand,tag=baba.object,tag=move_success] remove move_success
tag @e[type=armor_stand,tag=baba.object,tag=move_done] remove move_done
function baba:board/movement/process/move
execute as @e[type=armor_stand,tag=baba.object,tag=!move_success,nbt={HandItems:[{tag:{properties:["move"]}}]},nbt=!{HandItems:[{tag:{properties:["sleep"]}}]}] at @s run function baba:board/movement/attempt/move_turnaround
tag @e[type=armor_stand,tag=baba.object,tag=move_success] remove move_success
tag @e[type=armor_stand,tag=baba.object,tag=move_done] remove move_done
function baba:board/movement/process/shift
tag @e[type=armor_stand,tag=baba.object,tag=move_success] remove move_success
tag @e[type=armor_stand,tag=baba.object,tag=move_done] remove move_done

# first rule parsing and assignment, along with transforms
# rules with certain conditions cause all affected objects to re-assign every step
tag @e[type=armor_stand,tag=baba.object,tag=assign_always] add assign
execute if score direction baba matches 0 run tag @e[type=armor_stand,tag=baba.object,tag=assign_idle] add assign
execute if entity @e[type=armor_stand,tag=baba.object,tag=reparse,limit=1] run function baba:board/rules/update
execute if entity @e[type=armor_stand,tag=baba.object,tag=assign,limit=1] run function baba:board/rules/assign
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{transforms:[{}]}}]}] at @s run function baba:board/interact/transform

# parse and assign again if anything transformed, possibly into text
execute if entity @e[type=armor_stand,tag=baba.object,tag=reparse,limit=1] run function baba:board/rules/update
execute if entity @e[type=armor_stand,tag=baba.object,tag=assign,limit=1] run function baba:board/rules/assign

# properties are checked in batches
tag @e[type=armor_stand,tag=baba.object,tag=teleported] remove teleported
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["tele"]}}]}] at @s run function baba:board/interact/teleport
# shift changes the facing direction of objects both when pushing and when landing
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["shift"]}}]}] at @s run function baba:board/movement/process/shift_dir
execute if score direction baba matches 1.. as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["select"]}}]}] at @s run function baba:board/movement/select
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["fall"]}}]}] at @s run function baba:board/interact/fall
execute if score moved baba matches 1.. as @a at @s run playsound baba:move master @s

# parse and assign again if something moved, including text
execute if entity @e[type=armor_stand,tag=baba.object,tag=reparse,limit=1] run function baba:board/rules/update
execute if entity @e[type=armor_stand,tag=baba.object,tag=assign,limit=1] run function baba:board/rules/assign

# the real game has a bit more nuance on how facing properties interact, not done here
scoreboard players set @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["up"]}}]}] facing 1
scoreboard players set @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["down"]}}]}] facing 2
scoreboard players set @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["left"]}}]}] facing 3
scoreboard players set @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["right"]}}]}] facing 4

# cache float level in a score so we can compare it with /scoreboard players operation
# very obscure interactions require this to go here
scoreboard players set @e[type=armor_stand,tag=baba.object] float_level 0
scoreboard players set @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["float"]}}]}] float_level 1

# assign again if anything is created by 'more', but don't parse text
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["more"]}}]}] at @s run function baba:board/interact/more
execute if entity @e[type=armor_stand,tag=baba.object,tag=assign,limit=1] run function baba:board/rules/assign

execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["sink"]}}]}] at @s run function baba:board/interact/sink
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["weak"]}}]}] at @s run function baba:board/interact/weak
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["hot"]}}]}] at @s run function baba:board/interact/hot
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["defeat"]}}]}] at @s run function baba:board/interact/defeat
execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["shut"]}}]}] at @s run function baba:board/interact/shut

# assign again if anything is created by 'make', but don't parse text
execute as @e[type=armor_stand,tag=baba.object] if data entity @s HandItems[0].tag.make[0] at @s run function baba:board/interact/make
execute if entity @e[type=armor_stand,tag=baba.object,tag=assign,limit=1] run function baba:board/rules/assign

execute as @e[type=armor_stand,tag=baba.object,nbt={HandItems:[{tag:{properties:["win"]}}]}] at @s run function baba:board/interact/win

# graphical updates
execute as @e[type=armor_stand,tag=baba.object,tag=connector] at @s run function baba:board/graphics/connector
execute as @e[type=armor_stand,tag=baba.object,nbt=!{HandItems:[{tag:{properties:["sleep"]}}]}] run function baba:board/graphics/frame
execute as @e[type=armor_stand,tag=baba.object] at @s unless block ~ ~-1 ~ #baba:board run function baba:board/interact/destroy

scoreboard players add @e[type=armor_stand,tag=baba.object,scores={float_level=1..}] z_layer 100
execute if score text_enabled baba matches 1 unless entity @e[type=armor_stand,tag=baba.object,scores={move_frame=0..}] run function baba:display/text/update
function baba:display/stand/update
scoreboard players remove @e[type=armor_stand,tag=baba.object,scores={z_layer=100..}] z_layer 100

# save undo history
# if nothing changed, don't record this step
execute as @e[type=marker,tag=baba.space] at @s run function baba:board/history/record
execute unless entity @e[type=marker,tag=baba.space,scores={repeats=1}] run scoreboard players remove @e[type=marker,tag=baba.space] repeats 1
