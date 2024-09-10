fill ~ ~ ~ ^3 ^2 ^ white_concrete
fill ^ ^-1 ^ ^3 ^-1 ^ black_concrete
setblock ^1 ^-1 ^1 air
$setblock ^1 ^-1 ^1 bamboo_wall_sign[facing=$(facing)]{front_text:{messages:['"level"','"default"','""','""']}}
setblock ^3 ^-1 ^1 air
$setblock ^3 ^-1 ^1 bamboo_wall_sign[facing=$(facing)]{front_text:{messages:['""','{"text":"Play","clickEvent":{"action":"run_command","value":"/execute rotated $(rot) run function baba:dev/board/play {facing:\\"$(facing)\\",rot:\\"$(rot)\\",start:\\"^-3 ^1 ^\\",storage:\\"^-3 ^ ^\\",meta:\\"^-1 ^ ^\\",name:\\"^-2 ^ ^\\",load_meta:\\"^2 ^-1 ^\\",load_name:\\"^1 ^-1 ^\\"}"}}','""','""']}}
