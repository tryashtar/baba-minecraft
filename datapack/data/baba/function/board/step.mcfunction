execute store result storage baba:main context.level_height int 1 run scoreboard players get @s level_height
execute store result storage baba:main context.level_width int 1 run scoreboard players get @s level_width
data modify storage baba:main context.palette set from entity @s data.color_palette
function baba:board/tag_objects with storage baba:main context

# process movement in batches: you, then move, then shift
# if anything in a batch fails to move, try again until everything either succeeds or fails
# additionally, anything can only move once per batch
# these ensure that, for example, a plus sign of moving objects with 'push' or 'stop' move correctly
# it also allows objects with 'push' to stack when two 'shift' objects send them to the same tile
scoreboard players set moved baba 0
scoreboard players set opened baba 0
scoreboard players set destroyed baba 0
scoreboard players set rules_changed baba 0

execute if score direction baba matches 1.. run function baba:board/movement/batch/you
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=move_done] remove move_done
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=has_moved] remove has_moved
execute if score empty baba matches 1 run function baba:board/update_empty
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=assign,limit=1] run function baba:board/rules/assign

execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.move,tag=!prop.sleep] run scoreboard players operation @s life = @s move_stacks
function baba:board/movement/process/move
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.move,tag=!prop.sleep,tag=!move_done] run function baba:board/movement/turn_around
function baba:board/movement/process/move
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=move_done] remove move_done
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=has_moved] remove has_moved
execute if score empty baba matches 1 run function baba:board/update_empty
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=assign,limit=1] run function baba:board/rules/assign

execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.shift] at @s run function baba:board/movement/process/setup_shift
function baba:board/movement/process/shift
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=move_done] remove move_done
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=has_moved] remove has_moved
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=shifting] remove shifting
execute if score empty baba matches 1 run function baba:board/update_empty

# first rule parsing and assignment, along with transforms
# rules with certain conditions cause all affected objects to re-assign every step
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=assign_always] add assign
execute if score direction baba matches 0 run tag @e[type=#baba:object,tag=baba.object,tag=active,tag=assign_idle] add assign
execute if entity @e[type=item_display,tag=baba.object,tag=active,tag=reparse,limit=1] run function baba:board/rules/update
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=assign,limit=1] run function baba:board/rules/assign
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=has_transforms] at @s run function baba:board/interact/transform

# parse and assign again if anything transformed, possibly into text
execute if entity @e[type=item_display,tag=baba.object,tag=active,tag=reparse,limit=1] run function baba:board/rules/update
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=assign,limit=1] run function baba:board/rules/assign

# properties are checked in batches
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=teleported] remove teleported
scoreboard players set teleported baba 0
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.tele] at @s run function baba:board/interact/teleport
execute if score teleported baba matches 1.. as @a at @s run playsound baba:teleport master @s
# shift changes the facing direction of objects both when pushing and when landing
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.shift] at @s run function baba:board/interact/shift_dir
execute if score direction baba matches 1.. as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.select] at @s run function baba:board/movement/select
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.fall] at @s run function baba:board/interact/fall
execute if score moved baba matches 1.. as @a at @s run playsound baba:move master @s

# parse and assign again if something moved, including text
execute if entity @e[type=item_display,tag=baba.object,tag=active,tag=reparse,limit=1] run function baba:board/rules/update
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=assign,limit=1] run function baba:board/rules/assign

# the real game has a bit more nuance on how facing properties interact, not done here
scoreboard players set @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.up] facing 1
scoreboard players set @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.down] facing 2
scoreboard players set @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.left] facing 3
scoreboard players set @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.right] facing 4
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.dir] add dirty

# assign again if anything is created by 'more', but don't parse text
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.more] at @s run function baba:board/interact/more
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=assign,limit=1] run function baba:board/rules/assign

scoreboard players set sank baba 0
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.sink] at @s run function baba:board/interact/sink
execute if score sank baba matches 1.. as @a at @s run playsound baba:sink master @s
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.weak] at @s run function baba:board/interact/weak
scoreboard players set melted baba 0
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.hot] at @s run function baba:board/interact/hot
execute if score melted baba matches 1.. as @a at @s run playsound baba:melt master @s
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.defeat] at @s run function baba:board/interact/defeat
execute if score destroyed baba matches 1.. as @a at @s run playsound baba:defeat master @s
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.shut] at @s run function baba:board/interact/shut
execute if score opened baba matches 1.. as @a at @s run playsound baba:open master @s

# assign again if anything is created by 'make', but don't parse text
execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=has_makes] at @s run function baba:board/interact/make
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=assign,limit=1] run function baba:board/rules/assign

execute as @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.win] at @s run function baba:board/interact/win

# graphical updates
execute at @e[type=item_display,tag=baba.object,tag=active,tag=dirty] run tag @e[type=item_display,tag=baba.object,tag=active,tag=connector,tag=!dirty,distance=..1.1] add dirty
execute as @e[type=item_display,tag=baba.object,tag=active,tag=connector,tag=dirty] at @s run function baba:board/graphics/connector
execute as @e[type=item_display,tag=baba.object,tag=active,tag=has_frames,tag=!prop.sleep] run function baba:board/graphics/frame
execute as @e[type=item_display,tag=baba.object,tag=active] at @s unless block ~ ~-1 ~ #baba:board run function baba:board/interact/destroy

function baba:display/update

# save undo history
function baba:board/history/record
