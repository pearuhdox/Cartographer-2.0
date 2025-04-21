scoreboard players set $hurt_entity ca.morphed_health 0

$execute as $(target) at @s positioned ~ ~0.5 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute store result score $target_value ca.morphed_health run data get entity $(related_entity) Health 10
$scoreboard players set $perc_eff_health ca.morphed_health $(percent_eff_health)

scoreboard players operation $target_value ca.morphed_health *= $perc_eff_health ca.morphed_health
scoreboard players operation $target_value ca.morphed_health /= $100 ca.CONSTANT

scoreboard players set $compare_value ca.morphed_health 10240
scoreboard players operation $compare_value ca.morphed_health -= $target_value ca.morphed_health

$execute store result score $sheep_health ca.morphed_health run data get entity $(target) Health 10
scoreboard players set $morph_value ca.morphed_health 10240
scoreboard players operation $morph_value ca.morphed_health -= $sheep_health ca.morphed_health

execute if score $sheep_health ca.morphed_health < $compare_value ca.morphed_health run scoreboard players set $hurt_entity ca.morphed_health 2
execute if score duration= carto_event matches 1 run scoreboard players set $hurt_entity ca.morphed_health 1

execute if score $hurt_entity ca.morphed_health matches 2.. run scoreboard players set $morph_value ca.morphed_health 1024

execute if score $hurt_entity ca.morphed_health matches 1.. run data modify storage cartographer_custom_statuses:morphed damage set value {}
execute if score $hurt_entity ca.morphed_health matches 1.. run data modify storage cartographer_custom_statuses:morphed damage.value set value 0
execute if score $hurt_entity ca.morphed_health matches 1.. store result storage cartographer_custom_statuses:morphed damage.value double 0.1 run scoreboard players get $morph_value ca.morphed_health
execute if score $hurt_entity ca.morphed_health matches 1.. store result storage cartographer_custom_statuses:morphed damage.value double 1 run data get storage cartographer_custom_statuses:morphed damage.value 1



$execute if score $hurt_entity ca.morphed_health matches 1.. as $(target) at @s run tp $(related_entity) @s

$execute if score $hurt_entity ca.morphed_health matches 1.. as $(target) at @s run playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 1 1.25
$execute if score $hurt_entity ca.morphed_health matches 1.. as $(target) at @s run playsound minecraft:entity.sheep.ambient hostile @a[distance=..16] ~ ~ ~ 2 1.5
$execute if score $hurt_entity ca.morphed_health matches 1.. as $(target) at @s run playsound minecraft:entity.chicken.egg hostile @a[distance=..16] ~ ~ ~ 1.5 0.75
$execute if score $hurt_entity ca.morphed_health matches 1.. as $(target) at @s positioned ~ ~1 ~ run particle entity_effect{color:[1.00,1.00,1.00,1.00]} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute if score $hurt_entity ca.morphed_health matches 1.. as $(target) at @s positioned ~ ~1 ~ run particle poof ~ ~ ~ 0.2 0.2 0.2 0.1 10 normal
$execute if score $hurt_entity ca.morphed_health matches 1.. if score $morph_value ca.morphed_health matches 1.. as $(target) at @s positioned ~ ~1 ~ run particle minecraft:damage_indicator ~ ~ ~ 0.2 0.2 0.2 0.25 10 normal

$execute if score $hurt_entity ca.morphed_health matches 1.. as $(target) at @s on passengers run kill @s
$execute if score $hurt_entity ca.morphed_health matches 1.. as $(target) at @s run tp @s ~ -500 ~
$execute if score $hurt_entity ca.morphed_health matches 1.. as $(target) at @s run kill @s

$execute if score $hurt_entity ca.morphed_health matches 1.. as $(related_entity) at @s run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/morphed",duration:$(block_duration),delay:3,parameters:{},merge_behavior:"none"}

$execute if score $hurt_entity ca.morphed_health matches 1.. as $(related_entity) at @s if score @s ca.morphed_ai matches 0 run data modify entity @s NoAI set value 0b
$execute if score $hurt_entity ca.morphed_health matches 1.. as $(related_entity) at @s if score @s ca.morphed_ai matches 0 run data modify entity @s PersistenceRequired set value 0b

$execute if score $hurt_entity ca.morphed_health matches 1.. as $(related_entity) at @s run function carto_event:event/custom_statuses/morphed/sheep/redamage with storage cartographer_custom_statuses:morphed damage

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

return 1