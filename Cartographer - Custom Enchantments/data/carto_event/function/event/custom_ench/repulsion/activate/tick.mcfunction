$execute as $(target) at @s if score duration= carto_event matches 40 run playsound minecraft:entity.breeze.idle_ground hostile @a[distance=..16] ~ ~ ~ 1 2

$execute as $(target) at @s if score duration= carto_event matches 30 run playsound minecraft:entity.breeze.inhale hostile @a[distance=..16] ~ ~ ~ 2 0.5


$execute as $(target) at @s if score duration= carto_event matches 20 run scoreboard players set $range ca.ench_var 500
$execute as $(target) at @s if score duration= carto_event matches 20 run execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $range ca.ench_var += @s ca.attr_aoe_size_value
$execute as $(target) at @s if score duration= carto_event matches 20 run execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $range ca.ench_var *= @s ca.attr_aoe_size_percent
$execute as $(target) at @s if score duration= carto_event matches 20 run execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $range ca.ench_var /= $100 ca.CONSTANT
$execute as $(target) at @s if score duration= carto_event matches 20 run execute store result storage cartographer:custom_enchantments range double 0.01 run scoreboard players get $range ca.ench_var
$execute as $(target) at @s if score duration= carto_event matches 20 positioned ~ ~0.65 ~ run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/vfx_mob with storage cartographer:custom_enchantments

$execute as $(target) at @s if score duration= carto_event matches 1.. positioned ~ ~1 ~ run particle dust{color:[1.0,0.7,0.7],scale:1.5} ~ ~ ~ 0.35 0.35 0.35 0 1 force

$execute as $(target) at @s if score duration= carto_event matches 1 run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/activate

return 1