execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] on attacker run function cartographer_custom_attributes:system/projectile_find/owner_uuid
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] run function cartographer_custom_attributes:system/projectile_find/scan

execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=false}}] run scoreboard players set $ranged_damage ca.attr_apply_var 0

execute if score $ranged_damage ca.attr_apply_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/hit/apply

scoreboard players set $do_precise_hit ca.precise_hit_var 0
execute on attacker if score @s ca.attr_precise_hit_chance_total matches -1999999.. run scoreboard players set $do_precise_hit ca.precise_hit_var 1
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=false,panic_causes=true}}] if score $do_precise_hit ca.precise_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/precise_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] if score $do_precise_hit ca.precise_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/precise_hit/start {proc_coeff:"75",attack_type:"projectile"}
execute if entity @s[advancements={entityid:entity_hurt_player={panic_causes=false}}] if score $do_precise_hit ca.precise_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/precise_hit/start {proc_coeff:"5",attack_type:"melee"}

scoreboard players set $do_restrike ca.restrike_hit_var 0
execute on attacker if score @s ca.attr_restrike_chance_total matches -1999999.. run scoreboard players set $do_restrike ca.restrike_hit_var 1
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=false}}] unless entity @s[tag=ca.was_restriked] if score $do_restrike ca.restrike_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] unless entity @s[tag=ca.was_restriked] if score $do_restrike ca.restrike_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/start {proc_coeff:"75",attack_type:"projectile"}
