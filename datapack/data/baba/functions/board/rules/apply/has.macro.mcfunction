$execute if entity @s[type=item_display] unless items entity @s contents *[custom_data~{baba:{parsing:{has:[{inverted:1b,text:"$(apply)"}]}}}] run item modify entity @s contents {function:"copy_custom_data",source:{type:"storage",source:"baba:main"},ops:[{op:"append",source:"effect",target:"baba.parsing.has"}]}
$execute if entity @s[type=marker] unless data entity @s data.parsing.has[{inverted:1b,text:"$(apply)"}] run data modify entity @s data.parsing.has append from storage baba:main effect
