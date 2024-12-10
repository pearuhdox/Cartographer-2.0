#Motion was Updated - Do another check to see if we hit another collision

execute if score $x_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet x_find set value -0.1
execute unless score $x_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet x_find set value 0.1

execute if score $y_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet y_find set value -0.1
execute unless score $y_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet y_find set value 0.1

execute if score $z_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet z_find set value -0.1
execute unless score $z_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet z_find set value 0.1

scoreboard players set @s ca.raycast 0
function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/raycast with storage cartographer_custom_enchantments:ricochet
scoreboard players set @s ca.raycast 0