fill ~ ~ ~ ^3 ^2 ^ white_concrete
setblock ^1 ^-1 ^ air
$setblock ^1 ^-1 ^ bamboo_wall_sign[facing=$(facing)]{front_text:{messages:['"level"','"default"','""','""']}}
setblock ^3 ^-1 ^ air
$setblock ^3 ^-1 ^ bamboo_wall_sign[facing=$(facing)]{front_text:{messages:['""','{"text":"Play","clickEvent":{"action":"run_command","value":"/execute $(setup) run function baba:dev/board/play {facing:\\"$(facing)\\",setup:\\"$(setup)\\",start:\\"^-3 ^1 ^1\\",storage:\\"^-3 ^ ^\\",meta:\\"^-1 ^ ^\\",name:\\"^-2 ^ ^\\",load_meta:\\"^2 ^-1 ^-1\\",load_name:\\"^1 ^-1 ^-1\\"}"}}','""','""']}}
