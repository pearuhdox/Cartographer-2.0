
# 10 Scale -> -0.1917 +1.4500

data modify storage cartographer_core:telegraphing data set value {}

execute store result score $t_size ca.telegraph_data run data get storage carto_event current[-1].parameters.size 10
execute store result score $t_x ca.telegraph_data run data get storage carto_event current[-1].parameters.size 10
execute store result score $t_z ca.telegraph_data run data get storage carto_event current[-1].parameters.size 10

scoreboard players operation $t_size ca.telegraph_data *= $60 ca.CONSTANT
scoreboard players operation $t_size ca.telegraph_data /= $100 ca.CONSTANT

scoreboard players operation $t_x ca.telegraph_data = $t_size ca.telegraph_data
scoreboard players operation $t_z ca.telegraph_data = $t_size ca.telegraph_data

execute store result storage cartographer_core:telegraphing data.size float 1 run scoreboard players get $t_size ca.telegraph_data
scoreboard players operation $t_size ca.telegraph_data *= $-1 ca.CONSTANT
execute store result storage cartographer_core:telegraphing data.neg_size float 1 run scoreboard players get $t_size ca.telegraph_data

scoreboard players set $value ca.telegraph_data -1917
scoreboard players operation $t_x ca.telegraph_data *= $value ca.telegraph_data
scoreboard players set $value ca.telegraph_data 12000
scoreboard players operation $t_z ca.telegraph_data *= $value ca.telegraph_data

execute store result score $opacity ca.telegraph_data run data get storage carto_event current[-1].parameters.damage
scoreboard players operation $opacity ca.telegraph_data *= $3 ca.CONSTANT
scoreboard players add $opacity ca.telegraph_data 65

execute if score $opacity ca.telegraph_data matches 201.. run scoreboard players set $opacity ca.telegraph_data 200
execute store result storage cartographer_core:telegraphing data.opacity int 1 run scoreboard players get $opacity ca.telegraph_data

execute store result storage cartographer_core:telegraphing data.x_pos float 0.00001 run scoreboard players get $t_x ca.telegraph_data
execute store result storage cartographer_core:telegraphing data.z_pos float 0.00001 run scoreboard players get $t_z ca.telegraph_data

data modify storage cartographer_core:telegraphing merge set value {}
data modify storage cartographer_core:telegraphing merge set value {teleport_duration:2,start_interpolation:0,interpolation_duration:4,text_opacity:170,transformation:[0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

data modify storage cartographer_core:telegraphing merge.text_opacity set from storage cartographer_core:telegraphing data.opacity

data modify storage cartographer_core:telegraphing merge.transformation[0] set from storage cartographer_core:telegraphing data.size
data modify storage cartographer_core:telegraphing merge.transformation[6] set from storage cartographer_core:telegraphing data.size
data modify storage cartographer_core:telegraphing merge.transformation[9] set from storage cartographer_core:telegraphing data.neg_size

data modify storage cartographer_core:telegraphing merge.transformation[3] set from storage cartographer_core:telegraphing data.x_pos
data modify storage cartographer_core:telegraphing merge.transformation[11] set from storage cartographer_core:telegraphing data.z_pos

data modify entity @s {} merge from storage cartographer_core:telegraphing merge

#$say data merge entity @s {start_interpolation:0,interpolation_duration:7,text_opacity:170,transformation:[$(size),0.0000f,0.0000f,$(x_pos)f,0.0000f,-0.0000f,$(size),0.0500f,0.0000f,-$(size),-0.0000f,$(z_pos),0.0000f,0.0000f,0.0000f,1.0000f]}


#10 -> -19170.0 -0.1917 -> 0.00001

#10 -> 145000.0 -> 0.145 -> 0.00001

