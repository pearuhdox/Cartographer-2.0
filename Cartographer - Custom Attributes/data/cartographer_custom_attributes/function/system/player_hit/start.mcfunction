scoreboard players set $ranged_damage ca.attr_apply_var 0

execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run function cartographer_custom_attributes:system/projectile_find/owner_uuid
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run function cartographer_custom_attributes:system/projectile_find/scan

execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_attributes:system/get_attribute_information


execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] if score $life_drain_chance ca.attr_apply_var matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/start {proc_coeff:"50"}
execute if predicate bb:cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] if score $life_drain_chance ca.attr_apply_var matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/start {proc_coeff:"75"}
execute unless predicate bb:cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] if score $life_drain_chance ca.attr_apply_var matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/start {proc_coeff:"125"}
execute unless entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] unless entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] if score $life_drain_chance ca.attr_apply_var matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/start {proc_coeff:"5"}

scoreboard players set $do_precise_hit ca.precise_hit_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] if score $precise_hit_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_precise_hit ca.precise_hit_var 1
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] if score $precise_hit_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_precise_hit ca.precise_hit_var 2

scoreboard players set $do_chaining ca.chaining_hit_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] if score $chaining_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_chaining ca.chaining_hit_var 1
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] if score $chaining_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_chaining ca.chaining_hit_var 2

scoreboard players set $do_restrike ca.restrike_hit_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] if score $restrike_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_restrike ca.restrike_hit_var 1
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] if score $restrike_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_restrike ca.restrike_hit_var 2
