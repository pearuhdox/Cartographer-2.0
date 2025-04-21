$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.200,0.922,1.000,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal

$execute as $(target) at @s if score @s ca.adrenaline_duration matches 1.. run scoreboard players remove @s ca.adrenaline_duration 1

$execute if score duration= carto_event matches 1.. as $(target) at @s run scoreboard players operation $amp ca.adrenaline_stack = @s ca.adrenaline_stack
$execute if score duration= carto_event matches 1.. as $(target) at @s run scoreboard players operation $amp ca.adrenaline_stack *= @s ca.ench_adrenaline_lvl
$execute if score duration= carto_event matches 1.. as $(target) at @s run scoreboard players operation $amp ca.adrenaline_stack *= $2 ca.CONSTANT

$execute if score duration= carto_event matches 1.. as $(target) at @s store result storage cartographer_custom_enchantments:macro adrenaline double 0.01 run scoreboard players get $amp ca.adrenaline_stack
$execute if score duration= carto_event matches 1.. as $(target) at @s run function carto_event:event/custom_ench/adrenaline/macro with storage cartographer_custom_enchantments:macro

$execute if score duration= carto_event matches 1 as $(target) at @s run scoreboard players remove @s ca.adrenaline_stack 1
$execute if score duration= carto_event matches 1 as $(target) at @s unless score @s ca.adrenaline_stack matches 1.. run attribute @s minecraft:movement_speed modifier remove ca.adrenaline_amt

$execute if score duration= carto_event matches 1 as $(target) at @s if score @s ca.adrenaline_stack matches 1.. run scoreboard players set @s ca.adrenaline_duration 157
$execute if score duration= carto_event matches 1 as $(target) at @s if score @s ca.adrenaline_stack matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/adrenaline",duration:157,delay:3,parameters:{},merge_behavior:"merge"}

return 1