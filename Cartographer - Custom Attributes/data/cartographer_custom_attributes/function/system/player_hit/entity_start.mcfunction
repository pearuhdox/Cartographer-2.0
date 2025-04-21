execute if score $ranged_damage ca.attr_apply_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/hit/apply

execute if score $do_lucky_hit ca.lucky_hit_var matches 1 run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if score $do_lucky_hit ca.lucky_hit_var matches 2 run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"75",attack_type:"projectile"}
execute if score $do_lucky_hit ca.lucky_hit_var matches 3 run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/start {proc_coeff:"75",attack_type:"projectile_potion"}

execute if score $do_chaining ca.chaining_hit_var matches 1 unless entity @s[tag=ca.was_chained] run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if score $do_chaining ca.chaining_hit_var matches 2 unless entity @s[tag=ca.was_chained] run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"75",attack_type:"projectile"}
execute if score $do_chaining ca.chaining_hit_var matches 3 unless entity @s[tag=ca.was_chained] run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"75",attack_type:"projectile_potion"}

execute if score $do_restrike ca.restrike_hit_var matches 1 unless entity @s[tag=ca.was_restriked] run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/start {proc_coeff:"100",attack_type:"melee"}
execute if score $do_restrike ca.restrike_hit_var matches 2 unless entity @s[tag=ca.was_restriked] run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/start {proc_coeff:"75",attack_type:"projectile"}
execute if score $do_restrike ca.restrike_hit_var matches 3 unless entity @s[tag=ca.was_restriked] run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/start {proc_coeff:"75",attack_type:"projectile_potion"}

tag @s remove ca.projectile_find_loc