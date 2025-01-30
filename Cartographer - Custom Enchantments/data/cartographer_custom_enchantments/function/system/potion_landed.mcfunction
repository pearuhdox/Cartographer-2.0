data modify storage cartographer:custom_enchantments active_projectile set value {}
data modify storage cartographer:custom_enchantments active_projectile set from entity @s data.enchant_data

execute store result score $radius_div ca.attr_var run data get storage cartographer:custom_enchantments active_projectile.radius 1000

execute store result storage cartographer:custom_enchantments active_projectile.half_radius double 0.0005 run scoreboard players get $radius_div ca.attr_var

scoreboard players remove $radius_div ca.attr_var 1000
execute if score $radius_div ca.attr_var matches ..999 run scoreboard players set $radius_div ca.attr_var 1000
execute store result storage cartographer:custom_enchantments active_projectile.radius1 double 0.001 run scoreboard players get $radius_div ca.attr_var

scoreboard players set $potion_hit ca.ench_var 1


#Convert Data to Enchants for use here
function cartographer_custom_enchantments:register/data_to_enchants

#Potion Damage from Ranged Damage
function cartographer_custom_enchantments:system/potion_landed/target with storage cartographer:custom_enchantments active_projectile

#Run Various Enchantments Here that affect the user when activated - Grappling
execute if score $grappling ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/activate_hit_potion


scoreboard players set $potion_hit ca.ench_var 0