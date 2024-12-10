scoreboard players add @s ca.raycast 1

$execute unless block ~$(x_step) ~$(y_step) ~$(z_step) #cartographer_core:can_raycast positioned ~$(x_step) ~$(y_step) ~$(z_step) run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/find_block_face/start
$execute unless block ~$(x_step) ~$(y_step) ~$(z_step) #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 15

$execute unless score @s ca.raycast matches 15.. positioned ~$(x_step) ~$(y_step) ~$(z_step) run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/raycast with storage cartographer_custom_enchantments:ricochet