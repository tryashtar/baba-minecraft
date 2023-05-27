# process movement in batches: you, then move, then shift
# if anything in a batch fails to move, try again until everything either succeeds or fails
# additionally, anything can only move once per batch
# these ensure that, for example, a plus sign of moving objects with 'push' or 'stop' move correctly
# it also allows objects with 'push' to stack when two 'shift' objects send them to the same tile
scoreboard players set moved baba 0
execute if score direction baba matches 1.. run function baba:board/movement/process/you
tag @e[type=item_display,tag=baba.object,tag=move_success] remove move_success
tag @e[type=item_display,tag=baba.object,tag=move_done] remove move_done
function baba:board/movement/process/move
execute as @e[type=item_display,tag=baba.object,tag=!move_success,tag=prop.move,tag=!prop.sleep] at @s run function baba:board/movement/attempt/move_turnaround
tag @e[type=item_display,tag=baba.object,tag=move_success] remove move_success
tag @e[type=item_display,tag=baba.object,tag=move_done] remove move_done
function baba:board/movement/process/shift
tag @e[type=item_display,tag=baba.object,tag=move_success] remove move_success
tag @e[type=item_display,tag=baba.object,tag=move_done] remove move_done

# first rule parsing and assignment, along with transforms
# rules with certain conditions cause all affected objects to re-assign every step
tag @e[type=item_display,tag=baba.object,tag=assign_always] add assign
execute if score direction baba matches 0 run tag @e[type=item_display,tag=baba.object,tag=assign_idle] add assign
execute if entity @e[type=item_display,tag=baba.object,tag=reparse,limit=1] run function baba:board/rules/update
execute if entity @e[type=item_display,tag=baba.object,tag=assign,limit=1] run function baba:board/rules/assign
execute as @e[type=item_display,tag=baba.object,nbt={item:{tag:{transforms:[{}]}}}] at @s run function baba:board/interact/transform

# parse and assign again if anything transformed, possibly into text
execute if entity @e[type=item_display,tag=baba.object,tag=reparse,limit=1] run function baba:board/rules/update
execute if entity @e[type=item_display,tag=baba.object,tag=assign,limit=1] run function baba:board/rules/assign

# properties are checked in batches
tag @e[type=item_display,tag=baba.object,tag=teleported] remove teleported
execute as @e[type=item_display,tag=baba.object,tag=prop.tele] at @s run function baba:board/interact/teleport
# shift changes the facing direction of objects both when pushing and when landing
execute as @e[type=item_display,tag=baba.object,tag=prop.shift] at @s run function baba:board/movement/process/shift_dir
execute if score direction baba matches 1.. as @e[type=item_display,tag=baba.object,tag=prop.select] at @s run function baba:board/movement/select
execute if score direction baba matches 0 as @e[type=item_display,tag=baba.object,tag=prop.select] at @s as @e[type=item_display,tag=baba.object,distance=..0.1,nbt={item:{tag:{level_data:{}}}},limit=1] run function baba:progress/enter_level
execute as @e[type=item_display,tag=baba.object,tag=prop.fall] at @s run function baba:board/interact/fall
execute if score moved baba matches 1.. as @a at @s run playsound baba:move master @s

# parse and assign again if something moved, including text
execute if entity @e[type=item_display,tag=baba.object,tag=reparse,limit=1] run function baba:board/rules/update
execute if entity @e[type=item_display,tag=baba.object,tag=assign,limit=1] run function baba:board/rules/assign

# the real game has a bit more nuance on how facing properties interact, not done here
scoreboard players set @e[type=item_display,tag=baba.object,tag=prop.up] facing 1
scoreboard players set @e[type=item_display,tag=baba.object,tag=prop.down] facing 2
scoreboard players set @e[type=item_display,tag=baba.object,tag=prop.left] facing 3
scoreboard players set @e[type=item_display,tag=baba.object,tag=prop.right] facing 4
tag @e[type=item_display,tag=baba.object,tag=prop.up] add dirty
tag @e[type=item_display,tag=baba.object,tag=prop.down] add dirty
tag @e[type=item_display,tag=baba.object,tag=prop.left] add dirty
tag @e[type=item_display,tag=baba.object,tag=prop.right] add dirty

# cache float level in a score so we can compare it with /scoreboard players operation
# very obscure interactions require this to go here
scoreboard players set @e[type=item_display,tag=baba.object] float_level 0
scoreboard players set @e[type=item_display,tag=baba.object,tag=prop.float] float_level 1

# assign again if anything is created by 'more', but don't parse text
execute as @e[type=item_display,tag=baba.object,tag=prop.more] at @s run function baba:board/interact/more
execute if entity @e[type=item_display,tag=baba.object,tag=assign,limit=1] run function baba:board/rules/assign

execute as @e[type=item_display,tag=baba.object,tag=prop.sink] at @s run function baba:board/interact/sink
execute as @e[type=item_display,tag=baba.object,tag=prop.weak] at @s run function baba:board/interact/weak
scoreboard players set melted baba 0
execute as @e[type=item_display,tag=baba.object,tag=prop.hot] at @s run function baba:board/interact/hot
execute if score melted baba matches 1.. as @a at @s run playsound baba:melt master @s
execute as @e[type=item_display,tag=baba.object,tag=prop.defeat] at @s run function baba:board/interact/defeat
execute as @e[type=item_display,tag=baba.object,tag=prop.shut] at @s run function baba:board/interact/shut

# assign again if anything is created by 'make', but don't parse text
execute as @e[type=item_display,tag=baba.object] if data entity @s item.tag.make[0] at @s run function baba:board/interact/make
execute if entity @e[type=item_display,tag=baba.object,tag=assign,limit=1] run function baba:board/rules/assign

execute as @e[type=item_display,tag=baba.object,tag=prop.win] at @s run function baba:board/interact/win

# graphical updates
execute at @e[type=item_display,tag=baba.object,tag=dirty] run tag @e[type=item_display,tag=baba.object,tag=connector,tag=!dirty,distance=..1.1] add dirty
execute as @e[type=item_display,tag=baba.object,tag=connector,tag=dirty] at @s run function baba:board/graphics/connector
execute as @e[type=item_display,tag=baba.object,tag=!prop.sleep,tag=has_frames] run function baba:board/graphics/frame
execute as @e[type=item_display,tag=baba.object] at @s unless block ~ ~-1 ~ #baba:board run function baba:board/interact/destroy

scoreboard players add @e[type=item_display,tag=baba.object,scores={float_level=1..}] z_layer 100
function baba:display/update
scoreboard players remove @e[type=item_display,tag=baba.object,scores={z_layer=100..}] z_layer 100

# save undo history
# if nothing changed, don't record this step
execute as @e[type=marker,tag=baba.space,tag=dirty] at @s run function baba:board/history/record
scoreboard players add @e[type=marker,tag=baba.space,tag=!dirty] repeats 1
tag @e[type=marker,tag=baba.space,tag=dirty] remove dirty
execute unless entity @e[type=marker,tag=baba.space,scores={repeats=1}] run scoreboard players remove @e[type=marker,tag=baba.space] repeats 1
