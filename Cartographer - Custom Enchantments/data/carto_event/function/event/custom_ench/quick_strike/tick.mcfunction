# Effects While Active
$execute as $(target) at @s if score @s ca.quick_strike_active matches 1.. run tag @s remove ca.quick_strike_processed
$execute as $(target) at @s if score @s ca.quick_strike_active matches 1.. run scoreboard players remove @s ca.quick_strike_active 1
$execute as $(target) at @s if score @s ca.quick_strike_active matches 1.. run attribute @s minecraft:attack_speed modifier add ca.quick_strike_buff 1000 add_value


# Early End Conditions
$execute as $(target) at @s if score @s ca.quick_strike_stacks matches 0 run scoreboard players set @s ca.quick_strike_active 0
$execute as $(target) at @s if score @s ca.ench_quick_strike_lvl matches 0 run scoreboard players set @s ca.quick_strike_active 0

# Do Ending Process
$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 run attribute @s minecraft:attack_speed modifier remove ca.quick_strike_buff

$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 if score @s ca.quick_strike_stacks matches 1.. run playsound minecraft:block.bubble_column.whirlpool_inside player @s ~ ~ ~ 0.7 1.7
#$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 if score @s ca.quick_strike_stacks matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/quick_strike/cooldown",duration:601,delay:0,parameters:{},merge_behavior:"none"}
#$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 if score @s ca.quick_strike_stacks matches 1.. run scoreboard players operation $cooldown ca.quick_strike_cooldown = @s ca.ench_quick_strike_lvl
#$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 if score @s ca.quick_strike_stacks matches 1.. run scoreboard players operation $cooldown ca.quick_strike_cooldown *= $20 ca.CONSTANT
#$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 if score @s ca.quick_strike_stacks matches 1.. run scoreboard players add $cooldown ca.quick_strike_cooldown 20
#$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 if score @s ca.quick_strike_stacks matches 1.. run scoreboard players operation $cooldown ca.quick_strike_cooldown > $200 ca.CONSTANT
#$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 if score @s ca.quick_strike_stacks matches 1.. run scoreboard players add $cooldown ca.quick_strike_cooldown 1
#$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 if score @s ca.quick_strike_stacks matches 1.. run scoreboard players operation @s ca.quick_strike_cooldown = $cooldown ca.quick_strike_cooldown
$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 if score @s ca.quick_strike_stacks matches 1.. run scoreboard players set @s ca.quick_strike_stacks 0

$execute as $(target) at @s if score @s ca.quick_strike_active matches 0 run return 0

return 1