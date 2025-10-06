#Get bonus frames added or taken away by attr
execute if score @s ca.attr_invul_frames_total matches -1999999.. run scoreboard players operation $frames ca.invul_frames = @s ca.attr_invul_frames_total
execute if score @s ca.attr_invul_frames_total matches -1999999.. run scoreboard players operation $frames ca.invul_frames /= $100 ca.CONSTANT

execute if score @s ca.attr_invul_frames_total matches -1999999.. run scoreboard players operation $value ca.invul_frames += $frames ca.invul_frames

#Set invul frames
execute if score $apply_frames ca.invul_frames matches 1.. run scoreboard players operation @s ca.invul_frames = $value ca.invul_frames
#execute if score $apply_frames ca.invul_frames matches 1.. if score @s ca.invul_frames matches ..9 if score @s ca.kbr_frames matches 2.. run attribute @s knockback_resistance modifier add ca.invul_frame_kbr 1 add_value
#execute if score $apply_frames ca.invul_frames matches 1.. if score @s ca.invul_frames matches ..9 run say test
execute if score $apply_frames ca.invul_frames matches 1.. if score @s ca.invul_frames matches ..10 unless score @s ca.kbr_frames matches 1.. run scoreboard players set @s ca.kbr_frames 10
