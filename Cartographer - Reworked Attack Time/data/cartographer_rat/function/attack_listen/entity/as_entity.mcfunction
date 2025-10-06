scoreboard players set $value ca.invul_frames 10

#Get Shred value and use it to modify the invul frames
execute if score @s ca.attr_invul_shred_total matches -1999999.. run scoreboard players operation $shred ca.invul_frames = @s ca.attr_invul_shred_total
execute if score @s ca.attr_invul_shred_total matches -1999999.. run scoreboard players operation $shred ca.invul_frames /= $100 ca.CONSTANT

execute if score @s ca.attr_invul_shred_total matches -1999999.. run scoreboard players operation $value ca.invul_frames -= $shred ca.invul_frames

scoreboard players set $guardian ca.invul_frames 0
execute if entity @s[type=guardian] run scoreboard players set $guardian ca.invul_frames 1