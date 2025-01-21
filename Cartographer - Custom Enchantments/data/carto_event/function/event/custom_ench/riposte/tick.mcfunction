$execute as $(target) at @s if entity @s[tag=ca.riposte_blocking] if score @s ca.riposte_time matches 2 if entity @s[type=player] run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..16] ~ ~ ~ 0.5 2
$execute as $(target) at @s if entity @s[tag=ca.riposte_blocking] if score @s ca.riposte_time matches 2 if entity @s[type=!player] run playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..16] ~ ~ ~ 0.5 2

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_grounded] if score @s ca.riposte_time matches 1 if score @s ca.ench_fleetfoot_lvl matches 1.. unless score @s ca.fleetfoot_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/fleetfoot/activate
$execute as $(target) at @s if score @s ca.ench_repulsion_lvl matches 1.. if score @s ca.riposte_time matches 5 run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/channel_activate

$execute as $(target) at @s unless score @s ca.riposte_time matches 60.. unless predicate cartographer_custom_enchantments:riposte_resistance run effect give @s resistance 1 1

$execute as $(target) at @s unless score @s ca.riposte_time matches 60.. if entity @s[type=player] if entity @s[nbt={HurtTime:9s}] run playsound minecraft:item.shield.block player @a[distance=..16] ~ ~ ~ 1 1.25
$execute as $(target) at @s unless score @s ca.riposte_time matches 60.. if entity @s[type=!player] if entity @s[nbt={HurtTime:9s}] run playsound minecraft:item.shield.block hostile @a[distance=..16] ~ ~ ~ 1 1.25

$execute as $(target) at @s unless score @s ca.riposte_time matches 60.. if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_ench/riposte/retaliate

$execute as $(target) at @s if score @s ca.riposte_time matches 61 if entity @s[type=player] anchored eyes positioned ^ ^-0.3 ^0.8 run particle minecraft:block{block_state:"minecraft:spruce_planks"} ~ ~ ~ 0.1 0.1 0.1 0 3 normal
$execute as $(target) at @s if score @s ca.riposte_time matches 61 if entity @s[type=!player] anchored eyes positioned ^ ^-0.3 ^0.8 run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.02 3 normal

$execute as $(target) at @s if score @s ca.riposte_time matches 61 if entity @s[type=player] run playsound minecraft:item.shield.break player @a[distance=..16] ~ ~ ~ 1.2 1.25
$execute as $(target) at @s if score @s ca.riposte_time matches 61 if entity @s[type=!player] run playsound minecraft:item.shield.break hostile @a[distance=..16] ~ ~ ~ 1.2 1.25

$execute as $(target) at @s if score @s ca.riposte_time matches 61 if entity @s[type=player] if score @s ca.ench_riposte_lvl matches 1.. if predicate cartographer_custom_enchantments:has/riposte/offhand_ready unless predicate cartographer_custom_enchantments:has/riposte/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/unapply_offhand
$execute as $(target) at @s if score @s ca.riposte_time matches 61 if entity @s[type=player] if score @s ca.ench_riposte_lvl matches 1.. if predicate cartographer_custom_enchantments:has/riposte/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/unapply


$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] unless score @s ca.riposte_time matches 61 if entity @s[type=player] if score @s ca.ench_riposte_lvl matches 1.. if predicate cartographer_custom_enchantments:has/riposte/offhand_ready unless predicate cartographer_custom_enchantments:has/riposte/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/unapply_offhand
$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] unless score @s ca.riposte_time matches 61 if entity @s[type=player] if score @s ca.ench_riposte_lvl matches 1.. if predicate cartographer_custom_enchantments:has/riposte/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/unapply

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


$execute as $(target) at @s unless entity @s[tag=ca.riposte_blocking] run return 0

$execute as $(target) at @s run tag @s remove ca.riposte_blocking

return 1