scoreboard players set $ranged_damage ca.attr_apply_var 0

execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true,panic_causes=true}}] run function cartographer_custom_attributes:system/projectile_find/owner_uuid
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true,panic_causes=true}}] at @n[tag=ca.projectile_find_loc] run function cartographer_custom_attributes:system/projectile_find/scan

execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}}] run function cartographer_custom_attributes:system/get_attribute_information


execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] if score $life_drain_chance ca.attr_apply_var matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/start {proc_coeff:"50"}
execute if predicate cartographer_core:player/cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] if score $life_drain_chance ca.attr_apply_var matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/start {proc_coeff:"75"}
execute unless predicate cartographer_core:player/cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] if score $life_drain_chance ca.attr_apply_var matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/start {proc_coeff:"125"}
execute unless entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] unless entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] if score $life_drain_chance ca.attr_apply_var matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/start {proc_coeff:"5"}

scoreboard players set $do_lucky_hit ca.lucky_hit_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] if score $lucky_hit_chance ca.attr_apply_var matches -1999999.. unless score @s ca.attack_cooldown_percent matches 16.. run scoreboard players set $do_lucky_hit ca.lucky_hit_var 1
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true,panic_causes=true}}] if score $lucky_hit_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_lucky_hit ca.lucky_hit_var 2
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true,panic_causes=false}}] if score $lucky_hit_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_lucky_hit ca.lucky_hit_var 3

scoreboard players set $do_chaining ca.chaining_hit_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] if score $chaining_hit_chance ca.attr_apply_var matches -1999999.. unless score @s ca.attack_cooldown_percent matches 16.. run scoreboard players set $do_chaining ca.chaining_hit_var 1
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true,panic_causes=true}}] if score $chaining_hit_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_chaining ca.chaining_hit_var 2
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true,panic_causes=false}}] if score $chaining_hit_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_chaining ca.chaining_hit_var 3

scoreboard players set $do_restrike ca.restrike_hit_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] if score $restrike_hit_chance ca.attr_apply_var matches -1999999.. unless score @s ca.attack_cooldown_percent matches 16.. run scoreboard players set $do_restrike ca.restrike_hit_var 1
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true,panic_causes=true}}] if score $restrike_hit_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_restrike ca.restrike_hit_var 2
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true,panic_causes=false}}] if score $restrike_hit_chance ca.attr_apply_var matches -1999999.. run scoreboard players set $do_restrike ca.restrike_hit_var 3