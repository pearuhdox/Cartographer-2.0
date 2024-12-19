scoreboard players set $debuff_count ca.ench_var 0

execute if predicate cartographer_core:world/is_on_fire run scoreboard players add $debuff_count ca.ench_var 1

execute if predicate cartographer_core:potion_effect/has_bad_omen run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_blindness run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_darkness run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_hunger run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_levitation run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_mining_fatigue run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_nausea run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_poison run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_slowness run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_unluck run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_weakness run scoreboard players add $debuff_count ca.ench_var 1
execute if predicate cartographer_core:potion_effect/has_wither run scoreboard players add $debuff_count ca.ench_var 1

execute if entity @s[tag=ca.has_custom_status_slowness] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_weakness] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_blindness] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_armor_shred] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_wither] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_bleed] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_shocked] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_infected] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_evocation] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_brittle] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_exposed] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_shackled] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_grounded] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_silenced] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_confused] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_frozen] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_execute] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_windblast] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_oiled] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_siphon_speed] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_siphon_strength] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_slippery] run scoreboard players add $debuff_count ca.ench_var 1
execute if entity @s[tag=ca.has_custom_status_deafened] run scoreboard players add $debuff_count ca.ench_var 1
