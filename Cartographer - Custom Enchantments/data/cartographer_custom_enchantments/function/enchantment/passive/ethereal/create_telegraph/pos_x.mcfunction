data merge entity @s {item:{id:"minecraft:barrier",count:1},transformation:[-0.0000f,0.0000f,0.1000f,0.0000f,0.0000f,0.1000f,0.0000f,0.5000f,-0.1000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

function gu:generate
data modify storage cartographer_custom_enchantments:macro pos_x set from storage gu:main out

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity