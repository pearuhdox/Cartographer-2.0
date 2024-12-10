scoreboard players remove @s ca.raycast 1

#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

$execute if block ~ ~$(y_find) ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/y with storage cartographer_custom_enchantments:ricochet
$execute if block ~ ~$(y_find) ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

$execute if block ~$(x_find) ~ ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/x with storage cartographer_custom_enchantments:ricochet
$execute if block ~$(x_find) ~ ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

$execute if block ~ ~ ~$(z_find) #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/z with storage cartographer_custom_enchantments:ricochet
$execute if block ~ ~ ~$(z_find) #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

$execute if score @s ca.raycast matches 1.. positioned ~$(x_find) ~$(y_find) ~$(z_find) run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/find_block_face/raycast with storage cartographer_custom_enchantments:ricochet