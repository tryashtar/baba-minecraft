execute if items entity @s contents *[custom_data~{baba:{level:{id:"baba_is_you"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat1] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"out_of_reach"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat2] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"volcano"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat3] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"changeless"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat6] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"bridge_building"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat14] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"crab_storage"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat7] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"affection"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat8] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"wireless_factory"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat9] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"fragility"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat13] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"further_fields"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat12] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"poem"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat4] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"floaty_platforms"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat5] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"hop"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat15] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"lunar_gallery"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat10] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"keke_and_the_star"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat11] run tag @s add complete
execute if items entity @s contents *[custom_data~{baba:{level:{id:"bonus"}}}] if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat100] run tag @s add complete

execute if entity @s[tag=complete] on passengers run kill @s
execute if entity @s[tag=complete] run function baba:display/object
