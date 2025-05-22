execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true,panic_causes=true}}] on attacker run function cartographer_custom_attributes:system/projectile_find/owner_uuid
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true,panic_causes=true}}] at @s run function cartographer_custom_attributes:system/projectile_find/scan

execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=false}}] on attacker run function cartographer_custom_attributes:system/get_attribute_information

execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true,panic_causes=true}}] on attacker unless score @s ca.attr_ranged_damage_total matches -1999999.. run scoreboard players set $ranged_damage ca.attr_apply_var 0
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=false}}] run scoreboard players set $ranged_damage ca.attr_apply_var 0

execute if score $ranged_damage ca.attr_apply_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/hit/apply

scoreboard players set $do_lucky_hit ca.lucky_hit_var 0
execute on attacker if score @s ca.attr_lucky_hit_chance_total matches -1999999.. run scoreboard players set $do_lucky_hit ca.lucky_hit_var 1
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=false,panic_causes=true}}] if score $do_lucky_hit ca.lucky_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true,panic_causes=false}}] if score $do_lucky_hit ca.lucky_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"75",attack_type:"projectile_potion"}
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true,panic_causes=true}}] if score $do_lucky_hit ca.lucky_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"75",attack_type:"projectile"}
execute if entity @s[advancements={entityid:entity_hurt_player={panic_causes=false}}] if score $do_lucky_hit ca.lucky_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"5",attack_type:"melee"}

scoreboard players set $do_restrike ca.restrike_hit_var 0
execute on attacker if score @s ca.attr_restrike_hit_chance_total matches -1999999.. run scoreboard players set $do_restrike ca.restrike_hit_var 1
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=false}}] unless entity @s[tag=ca.was_restriked] if score $do_restrike ca.restrike_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] unless entity @s[tag=ca.was_restriked] if score $do_restrike ca.restrike_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/start {proc_coeff:"75",attack_type:"projectile"}

scoreboard players set $do_chaining ca.chaining_hit_var 0
execute on attacker if score @s ca.attr_chaining_hit_chance_total matches -1999999.. run scoreboard players set $do_chaining ca.restrike_hit_var 1
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=false}}] unless entity @s[tag=ca.was_chained] if score $do_chaining ca.chaining_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] unless entity @s[tag=ca.was_chained] if score $do_chaining ca.chaining_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"75",attack_type:"projectile"}