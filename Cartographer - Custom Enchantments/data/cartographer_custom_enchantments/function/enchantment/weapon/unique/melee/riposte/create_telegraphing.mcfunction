data merge entity @s {item:{id:"minecraft:shield",count:1},item_display:"thirdperson_righthand",transformation:[-0.0000f,0.0000f,0.1000f,0.0000f,0.0000f,0.1000f,0.0000f,0.5000f,-0.1000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

tag @s add ca.riposte_telegraphing

function gu:generate
data modify storage cartographer:custom_enchantments telegraph set from storage gu:main out