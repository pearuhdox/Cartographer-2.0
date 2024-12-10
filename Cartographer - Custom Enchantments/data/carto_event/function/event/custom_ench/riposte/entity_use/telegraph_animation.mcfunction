
data modify storage cartographer_core:telegraphing merge set value {}
data modify storage cartographer_core:telegraphing merge set value {Glowing:1b,brightness:{sky:15,block:15},glow_color_override:16764566,teleport_duration:2,start_interpolation:0,interpolation_duration:5,transformation:[-0.0000f,0.3500f,0.6062f,0.1250f,0.0000f,0.6062f,-0.3500f,1.0000f,-0.7000f,-0.0000f,-0.0000f,0.3300f,0.0000f,0.0000f,0.0000f,1.0000f]}

data modify entity @s {} merge from storage cartographer_core:telegraphing merge

#data merge entity @n[type=minecraft:text_display] {text_opacity:170,transformation:[20.0000f,0.0000f,0.0000f,-0.3834f,0.0000f,-0.0000f,20.0000f,0.0500f,0.0000f,-40.0000f,-0.0000f,9.000f,0.0000f,0.0000f,0.0000f,1.0000f]}

#10 -> -19170.0 -0.1917 -> 0.00001

#10 -> 145000.0 -> 0.145 -> 0.00001

