#Do Custom Effects for landing - grappling in custom enchantments
execute if score $custom_enchantments ca.installed matches 1.. store result score $trident_val ca.ench_grappling_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/grappling
execute if score $custom_enchantments ca.installed matches 1.. store result score $trident_val ca.ench_grappling_lvl run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/activate_hit_trident

#Do a player damage check
scoreboard players operation $ranged_damage ca.attr_apply_var = @s ca.attr_ranged_damage_total

scoreboard players set @s ca.raycast 60
execute positioned ^ ^-0.75 ^ run function carto_event:event/custom_attribute/trident/landed/raycast

summon trident ~ ~ ~ {DealtDamage:1b,Tags:["ca.custom_trident_drop","ca.no_damage"],pickup:1b}

execute on passengers run data modify storage cartographer_custom_attributes:trident owner set from entity @s data.Owner
data modify storage cartographer_custom_attributes:trident item set from entity @s item

scoreboard players set $pickup_block ca.custom_trident 0
execute if entity @s[tag=ca.no_pickup] run scoreboard players set $pickup_block ca.custom_trident 1

#Synergy for Collapse
scoreboard players set $trident_test ca.collapse_x 0
scoreboard players set $trident_test ca.collapse_y 0
scoreboard players set $trident_test ca.collapse_z 0
scoreboard players set $trident_test ca.collapse_break_speed 0

scoreboard players operation $trident_test ca.collapse_x = @s ca.collapse_x
scoreboard players operation $trident_test ca.collapse_y = @s ca.collapse_y
scoreboard players operation $trident_test ca.collapse_z = @s ca.collapse_z
scoreboard players operation $trident_test ca.collapse_break_speed = @s ca.collapse_break_speed

function cartographer_custom_enchantments:enchantment/helper/weapon/get_ench_values
execute as @e[type=trident,limit=1,sort=nearest,tag=ca.custom_trident_drop] at @s run function carto_event:event/custom_attribute/trident/landed/drop with storage carto_event current[-1].parameters

playsound minecraft:item.trident.hit player @a ~ ~ ~ 0.5 1

execute on passengers run kill @s
kill @s