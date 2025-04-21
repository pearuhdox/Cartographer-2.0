#data modify entity @s Rotation set from storage cartographer:custom_enchantments Rotation
data merge entity @s {teleport_duration:10,Rotation:[90F,0F],line_width:210,text_opacity:65,alignment:"center",transformation:[10.0000f,0.0000f,0.0000f,-0.1917f,0.0000f,-0.0000f,10.0000f,0.0500f,0.0000f,-10.0000f,-0.0000f,1.1500f,0.0000f,0.0000f,0.0000f,1.0000f],text:{"bold":false,"color":"#FF0000","font":"minecraft:uniform","italic":false,"strikethrough":false,"text":"⬤","underlined":false},background:0}

tag @s add ca.ambushing_telegraph

function gu:generate
data modify storage cartographer:custom_enchantments telegraph set from storage gu:main out

tag @s add ca.telegraph

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity