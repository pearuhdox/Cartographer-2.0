$execute as $(target) at @s unless score @s ca.attr_healing_power_total matches -1999999.. run return 0

$execute as $(target) at @s store result score @s ca.healing_power_hp run data get entity @s Health 100

$execute as $(target) at @s unless score @s ca.healing_power_cooldown matches 1.. if score @s ca.healing_power_hp > @s ca.healing_power_hp_past run function carto_event:event/custom_attribute/healing_power/adjust

$execute as $(target) at @s run scoreboard players operation @s ca.healing_power_hp_past = @s ca.healing_power_hp

$execute as $(target) at @s if score @s ca.healing_power_cooldown matches 1.. run scoreboard players remove @s ca.healing_power_cooldown 1

#$execute as $(target) at @s run say active

$execute as $(target) at @s if score duration= carto_event matches 2 if score @s ca.attr_healing_power_total matches -1999999.. run function carto_event:api/create_single_entity_event {event:"custom_attribute/healing_power",duration:100,delay:0,parameters:{},merge_behavior:"merge"}

#say HEALING

return 1