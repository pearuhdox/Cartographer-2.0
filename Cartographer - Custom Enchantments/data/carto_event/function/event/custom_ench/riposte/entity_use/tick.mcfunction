$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0

$execute as $(telegraph) at @s if score duration= carto_event matches 199 run function carto_event:event/custom_ench/riposte/entity_use/telegraph_animation

$execute if score duration= carto_event matches 199 as $(target) at @s if score @s ca.ench_repulsion_lvl matches 1.. unless score @s ca.repulsion_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/mob_activate

$execute as $(target) at @s if score duration= carto_event matches 160.. run tag @s add ca.riposte_blocking
$execute as $(target) at @s if score duration= carto_event matches 160.. run scoreboard players add @s ca.riposte_time 1

$execute as $(target) at @s if score duration= carto_event matches 160.. run attribute @s minecraft:movement_speed modifier add ca.riposte_slow_mob -0.35 add_multiplied_total
$execute as $(target) at @s if score duration= carto_event matches 159 run attribute @s minecraft:movement_speed modifier remove ca.riposte_slow_mob

#$execute as $(target) at @s if score duration= carto_event matches 160.. if predicate cartographer_core:periodic_tick/2 anchored eyes positioned ^ ^ ^ facing entity @p eyes positioned ^0.35 ^-0.75 ^1.5 run particle minecraft:wax_off ~ ~ ~ 0 0.2 0 0.01 1 normal
#$execute as $(target) at @s if score duration= carto_event matches 160.. if predicate cartographer_core:periodic_tick/2 anchored eyes positioned ^ ^ ^ facing entity @p eyes positioned ^-0.35 ^-0.75 ^1.5 run particle minecraft:wax_off ~ ~ ~ 0 0.2 0 0.01 1 normal
#$execute as $(target) at @s if score duration= carto_event matches 160.. if predicate cartographer_core:periodic_tick/2 anchored eyes positioned ^ ^ ^ facing entity @p eyes positioned ^ ^-0.75 ^1.5 run particle minecraft:wax_off ~ ~ ~ 0 0.2 0 0.01 1 normal

$execute as $(telegraph) at $(target) if score duration= carto_event matches 159.. run tp @s ~ ~ ~ ~ ~

#$execute as $(telegraph) at @s if score duration= carto_event matches 159 run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(telegraph) at @s if score duration= carto_event matches 159 run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(telegraph) at @s if score duration= carto_event matches 159 run kill @s

#Riposte Code
$execute as $(target) at @s if entity @s[tag=ca.riposte_blocking] if score @s ca.riposte_time matches 2 if entity @s[type=player] run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..16] ~ ~ ~ 0.5 2
$execute as $(target) at @s if entity @s[tag=ca.riposte_blocking] if score @s ca.riposte_time matches 2 if entity @s[type=!player] run playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..16] ~ ~ ~ 0.5 2

$execute as $(target) at @s if entity @s[tag=ca.riposte_blocking] unless score @s ca.riposte_time matches 40.. unless predicate cartographer_custom_enchantments:riposte_resistance run effect give @s resistance 1 1

$execute as $(target) at @s if entity @s[tag=ca.riposte_blocking] unless score @s ca.riposte_time matches 40.. if entity @s[type=player] if entity @s[nbt={HurtTime:9s}] run playsound minecraft:item.shield.block player @a[distance=..16] ~ ~ ~ 1 1.25
$execute as $(target) at @s if entity @s[tag=ca.riposte_blocking] unless score @s ca.riposte_time matches 40.. if entity @s[type=!player] if entity @s[nbt={HurtTime:9s}] run playsound minecraft:item.shield.block hostile @a[distance=..16] ~ ~ ~ 1 1.25

$execute as $(target) at @s if entity @s[tag=ca.riposte_blocking] unless score @s ca.riposte_time matches 40.. if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_ench/riposte/retaliate

$execute as $(target) at @s if score @s ca.riposte_time matches 41 if entity @s[type=player] anchored eyes positioned ^ ^-0.3 ^0.8 run particle minecraft:block{block_state:"minecraft:spruce_planks"} ~ ~ ~ 0.1 0.1 0.1 0 3 normal
$execute as $(target) at @s if score @s ca.riposte_time matches 41 if entity @s[type=!player] anchored eyes positioned ^ ^-0.3 ^0.8 run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.02 3 normal

$execute as $(target) at @s if score @s ca.riposte_time matches 41 if entity @s[type=player] run playsound minecraft:item.shield.break player @a[distance=..16] ~ ~ ~ 1.2 1.25
$execute as $(target) at @s if score @s ca.riposte_time matches 41 if entity @s[type=!player] run playsound minecraft:item.shield.break hostile @a[distance=..16] ~ ~ ~ 1.2 1.25

$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] run scoreboard players set @s ca.riposte_time 0

$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] store result score $duration_full ca.ench_riposte_lvl run data get entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect.duration 1
$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] run scoreboard players operation $duration ca.ench_riposte_lvl = $duration_full ca.ench_riposte_lvl
$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] run scoreboard players operation $duration ca.ench_riposte_lvl /= $20 ca.CONSTANT
$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] if score $duration_full ca.ench_riposte_lvl matches 1.. run scoreboard players add $duration ca.ench_riposte_lvl 1
$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] store result score $amplifer ca.ench_riposte_lvl run data get entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect.amplifier 1

$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] run data modify storage cartographer_custom_enchantments:riposte data set value {}
$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] store result storage cartographer_custom_enchantments:riposte data.duration int 1 run scoreboard players get $duration ca.ench_riposte_lvl
$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] store result storage cartographer_custom_enchantments:riposte data.amplifier int 1 run scoreboard players get $amplifer ca.ench_riposte_lvl
$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] run data modify storage cartographer_custom_enchantments:riposte data.effect set value "minecraft:resistance"

$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] unless predicate cartographer_custom_enchantments:riposte_resistance unless score $duration_full ca.ench_riposte_lvl matches 1.. run effect clear @s resistance
$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] unless predicate cartographer_custom_enchantments:riposte_resistance if score $duration_full ca.ench_riposte_lvl matches 1.. unless score $amplifier ca.ench_riposte_lvl matches 2.. run function carto_event:event/custom_ench/riposte/hidden_effect with storage cartographer_custom_enchantments:riposte data

#Remove return 0 condition

$execute as $(target) at @s run tag @s remove ca.riposte_blocking
#End Riposte Code


$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.mob_use_riposte
$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.mob_use_riposte

return 1