scoreboard players remove @s ca.raycast 1

$execute if block ~$(x_step) ~$(y_step) ~$(z_step) #cartographer_core:can_raycast positioned ~$(x_step) ~$(y_step) ~$(z_step) run particle minecraft:dust{color:[0.6,1.0,0.6],scale:1} ~ ~ ~ 0 0 0 1 1 force
$execute unless block ~$(x_step) ~$(y_step) ~$(z_step) #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

$execute if score @s ca.raycast matches 1.. positioned ~$(x_step) ~$(y_step) ~$(z_step) run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/vfx with storage cartographer_custom_enchantments:ricochet