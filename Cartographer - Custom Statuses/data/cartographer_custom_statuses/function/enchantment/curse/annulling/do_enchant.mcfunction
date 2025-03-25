scoreboard players operation $old ca.annulling_ct = @s ca.annulling_ct

scoreboard players set @s ca.annulling_ct 0


attribute @s minecraft:attack_damage modifier remove ca.positive_siphon_strength
attribute @s minecraft:movement_speed modifier remove ca.positive_siphon_speed

attribute @s minecraft:attack_damage modifier remove ca.speed
attribute @s minecraft:movement_speed modifier remove ca.strength

attribute @s minecraft:armor modifier remove ca.armor_buff

execute if predicate cartographer_core:potion_effect/has_speed run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_haste run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_strength run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_jump_boost run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_regeneration run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_resistance run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_fire_resistance run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_water_breathing run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_invisibility run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_night_vision run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_health_boost run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_absorption run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_slow_falling run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_dolphins_grace run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_conduit_power run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_hero_of_the_village run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_wither run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_wither run scoreboard players add @s ca.annulling_ct 1
execute if predicate cartographer_core:potion_effect/has_wither run scoreboard players add @s ca.annulling_ct 1

execute if score @s ca.siphon_timer matches 1.. run scoreboard players add @s ca.annulling_ct 1

execute if entity @s[tag=ca.has_custom_status_speed] run scoreboard players add @s ca.annulling_ct 1
execute if entity @s[tag=ca.has_custom_status_strength] run scoreboard players add @s ca.annulling_ct 1
execute if entity @s[tag=ca.has_custom_status_armor_buff] run scoreboard players add @s ca.annulling_ct 1

execute if entity @s[tag=ca.has_custom_status_warding] run scoreboard players add @s ca.annulling_ct 1
execute if entity @s[tag=ca.has_custom_status_defiance] run scoreboard players add @s ca.annulling_ct 1

execute if entity @s[tag=ca.has_custom_status_evasion] run scoreboard players add @s ca.annulling_ct 1
execute if entity @s[tag=ca.has_custom_status_nullify] run scoreboard players add @s ca.annulling_ct 1

execute if entity @s[tag=ca.has_custom_status_regeneration] run scoreboard players add @s ca.annulling_ct 1


execute if score $old ca.annulling_ct < @s ca.annulling_ct run function cartographer_custom_statuses:enchantment/curse/annulling/attempt