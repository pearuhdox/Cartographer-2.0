#Get bonus frames added or taken away by attr
execute if score @s ca.attr_invul_frames_total matches -1999999.. run scoreboard players operation $frames ca.invul_frames = @s ca.attr_invul_frames_total
execute if score @s ca.attr_invul_frames_total matches -1999999.. run scoreboard players operation $frames ca.invul_frames /= $100 ca.CONSTANT

execute if score @s ca.attr_invul_frames_total matches -1999999.. run scoreboard players operation $value ca.invul_frames += $frames ca.invul_frames

scoreboard players set $apply_frames ca.invul_frames 0
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] run scoreboard players set $apply_frames ca.invul_frames 1
execute if entity @s[advancements={entityid:entity_hurt_player={is_lightning=false,is_projectile=false}}] run scoreboard players set $apply_frames ca.invul_frames 1

#Set invul frames
execute unless entity @s[advancements={entityid:entity_hurt_player={witch_resistant_to=true,bypasses_armor=true,bypasses_wolf_armor=true}}] if score $apply_frames ca.invul_frames matches 1.. run scoreboard players operation @s ca.invul_frames = $value ca.invul_frames
