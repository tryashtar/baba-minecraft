$execute if entity @s[type=item_display] unless items entity @s contents *[custom_data~{baba:{parsing:{properties:[{inverted:1b,text:"$(apply)"}]}}}] run return run item modify entity @s contents {function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"append",source:"effect",target:"baba.parsing.properties"}]}
$execute if entity @s[type=marker] unless data entity @s data.parsing.properties[{inverted:1b,text:"$(apply)"}] run return run data modify entity @s data.parsing.properties append from storage baba:main effect
return fail
