data merge entity @s {teleport_duration:0,line_width:210,text_opacity:65,alignment:"center",transformation:[20.0000f,0.0000f,0.0000f,-0.3834f,0.0000f,0.0000f,20.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:{"bold":false,"color":"#FF0000","font":"minecraft:uniform","italic":false,"strikethrough":false,"text":"█","underlined":false},background:0}



function gu:generate
data modify storage cartographer:custom_enchantments telegraph set from storage gu:main out

tag @s add ca.thrusting_telegraph
tag @s add ca.telegraph

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity