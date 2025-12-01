execute if score $projectile ehid_damage_type matches 1 unless score $no_trigger ehid_damage_type matches 1 on attacker run function cartographer_custom_attributes:system/projectile_find/owner_uuid
execute if score $projectile ehid_damage_type matches 1 unless score $no_trigger ehid_damage_type matches 1 at @s run function cartographer_custom_attributes:system/projectile_find/scan

execute unless score $projectile ehid_damage_type matches 1 unless score $no_trigger ehid_damage_type matches 1 on attacker run function cartographer_custom_attributes:system/get_attribute_information

execute if score $projectile ehid_damage_type matches 1 unless score $no_trigger ehid_damage_type matches 1 on attacker unless score @s ca.attr_ranged_damage_total matches -1999999.. run scoreboard players set $ranged_damage ca.attr_apply_var 0
execute unless score $projectile ehid_damage_type matches 1 run scoreboard players set $ranged_damage ca.attr_apply_var 0

execute if score $ranged_damage ca.attr_apply_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/hit/apply

scoreboard players set $do_lucky_hit ca.lucky_hit_var 0
execute on attacker if score @s ca.attr_lucky_hit_chance_total matches -1999999.. run scoreboard players set $do_lucky_hit ca.lucky_hit_var 1
execute if score $melee ehid_damage_type matches 1 unless score $no_trigger ehid_damage_type matches 1 if score $do_lucky_hit ca.lucky_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if score $carto_potion ehid_damage_type matches 1 if score $do_lucky_hit ca.lucky_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"75",attack_type:"projectile_potion"}
execute if score $projectile ehid_damage_type matches 1 unless score $no_trigger ehid_damage_type matches 1 if score $do_lucky_hit ca.lucky_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"75",attack_type:"projectile"}
execute unless score $no_trigger ehid_damage_type matches 1 if score $do_lucky_hit ca.lucky_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"5",attack_type:"melee"}

scoreboard players set $do_restrike ca.restrike_hit_var 0
execute on attacker if score @s ca.attr_restrike_hit_chance_total matches -1999999.. run scoreboard players set $do_restrike ca.restrike_hit_var 1
execute if score $melee ehid_damage_type matches 1 unless score $no_trigger ehid_damage_type matches 1 unless entity @s[tag=ca.was_restriked] if score $do_restrike ca.restrike_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if score $projectile ehid_damage_type matches 1 unless score $no_trigger ehid_damage_type matches 1 unless entity @s[tag=ca.was_restriked] if score $do_restrike ca.restrike_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/start {proc_coeff:"75",attack_type:"projectile"}

scoreboard players set $do_chaining ca.chaining_hit_var 0
execute on attacker if score @s ca.attr_chaining_hit_chance_total matches -1999999.. run scoreboard players set $do_chaining ca.restrike_hit_var 1
execute if score $melee ehid_damage_type matches 1 unless score $no_trigger ehid_damage_type matches 1 unless entity @s[tag=ca.was_chained] if score $do_chaining ca.chaining_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if score $projectile ehid_damage_type matches 1 unless score $no_trigger ehid_damage_type matches 1 unless entity @s[tag=ca.was_chained] if score $do_chaining ca.chaining_hit_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"75",attack_type:"projectile"}
