execute store result score $damage ca.ench_var run attribute @s attack_damage get 100
execute store result score $mult ca.ench_var run attribute @s sweeping_damage_ratio get 100
scoreboard players add $mult ca.ench_var 100

#scoreboard players operation $damage ca.ench_var *= $100 ca.CONSTANT
#scoreboard players operation $damage ca.ench_var /= $100 ca.CONSTANT

scoreboard players operation $damage ca.ench_var *= $mult ca.ench_var
scoreboard players operation $damage ca.ench_var /= $100 ca.CONSTANT

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $damage ca.ench_var += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_var /= $100 ca.CONSTANT


scoreboard players set $range ca.ench_var 500
execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $range ca.ench_var += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $range ca.ench_var *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $range ca.ench_var /= $100 ca.CONSTANT

scoreboard players operation $range ca.ench_var /= $100 ca.CONSTANT
scoreboard players operation @s ca.raycast = $range ca.ench_var

playsound minecraft:entity.player.attack.knockback player @a[distance=..16] ~ ~ ~ 1 0.75

tag @s add ca.thrusting_owner

data modify storage cartographer:custom_enchantments custom_statuses set value {}
function cartographer_custom_enchantments:enchantment/weapon/unique/melee/thrusting/custom_statuses/check_allow_status

scoreboard players set $no_particle ca.ench_thrusting_lvl 0
execute as @s at @s anchored eyes positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/thrusting/raycast

tag @s remove ca.thrusting_owner

tag @e[distance=..16] remove ca.thrust_hit

scoreboard players set @s ca.special_attack_cooldown 3
function carto_event:api/create_single_entity_event {event:"custom_ench/special_attack_cooldown",duration:3,delay:0,parameters:{},merge_behavior:"merge"}
