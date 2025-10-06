scoreboard players operation $value ca.invul_frames = $base_invul_frames ca.gamerule

#Get Shred value and use it to modify the invul frames
execute if score @s ca.attr_invul_shred_total matches -1999999.. run scoreboard players operation $shred ca.invul_frames = @s ca.attr_invul_shred_total
execute if score @s ca.attr_invul_shred_total matches -1999999.. run scoreboard players operation $shred ca.invul_frames /= $100 ca.CONSTANT

execute if score @s ca.attr_invul_shred_total matches -1999999.. run scoreboard players operation $value ca.invul_frames -= $shred ca.invul_frames

scoreboard players set $apply_frames ca.invul_frames 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $apply_frames ca.invul_frames 1
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true}}] run scoreboard players set $apply_frames ca.invul_frames 1
