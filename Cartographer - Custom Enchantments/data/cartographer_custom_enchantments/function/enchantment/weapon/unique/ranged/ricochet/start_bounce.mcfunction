execute store result score $x_mot ca.ench_ricochet_lvl run data get entity @s Motion[0] 1000
execute store result score $y_mot ca.ench_ricochet_lvl run data get entity @s Motion[1] 1000
execute store result score $z_mot ca.ench_ricochet_lvl run data get entity @s Motion[2] 1000

scoreboard players operation $x_mot_invert ca.ench_ricochet_lvl = $x_mot ca.ench_ricochet_lvl
scoreboard players operation $y_mot_invert ca.ench_ricochet_lvl = $y_mot ca.ench_ricochet_lvl
scoreboard players operation $z_mot_invert ca.ench_ricochet_lvl = $z_mot ca.ench_ricochet_lvl

scoreboard players operation $x_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT
scoreboard players operation $y_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT
scoreboard players operation $z_mot_invert ca.ench_ricochet_lvl *= $-1 ca.CONSTANT

data modify storage cartographer_custom_enchantments:ricochet Motion set value []
data modify storage cartographer_custom_enchantments:ricochet Motion set from entity @s Motion

execute store result storage cartographer_custom_enchantments:ricochet x_step double 0.0001 run scoreboard players get $x_mot ca.ench_ricochet_lvl
execute store result storage cartographer_custom_enchantments:ricochet y_step double 0.0001 run scoreboard players get $y_mot ca.ench_ricochet_lvl
execute store result storage cartographer_custom_enchantments:ricochet z_step double 0.0001 run scoreboard players get $z_mot ca.ench_ricochet_lvl

execute store result storage cartographer_custom_enchantments:ricochet x_step_invert double 0.0001 run scoreboard players get $x_mot_invert ca.ench_ricochet_lvl
execute store result storage cartographer_custom_enchantments:ricochet y_step_invert double 0.0001 run scoreboard players get $y_mot_invert ca.ench_ricochet_lvl
execute store result storage cartographer_custom_enchantments:ricochet z_step_invert double 0.0001 run scoreboard players get $z_mot_invert ca.ench_ricochet_lvl

execute if score $x_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet x_find set value -0.1
execute unless score $x_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet x_find set value 0.1

execute if score $y_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet y_find set value -0.1
execute unless score $y_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet y_find set value 0.1

execute if score $z_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet z_find set value -0.1
execute unless score $z_mot ca.ench_ricochet_lvl matches 1.. run data modify storage cartographer_custom_enchantments:ricochet z_find set value 0.1

scoreboard players set @s ca.raycast 0

execute if entity @s[type=#bb:arrow] positioned ~ ~-0.5 ~ run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/raycast with storage cartographer_custom_enchantments:ricochet
execute if entity @s[type=trident] positioned ~ ~-0.5 ~ run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/raycast with storage cartographer_custom_enchantments:ricochet
execute if entity @s[type=!#bb:arrow,type=!trident] positioned ~ ~-0.2 ~ run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/raycast with storage cartographer_custom_enchantments:ricochet

scoreboard players set @s ca.raycast 0

execute if entity @s[nbt={inGround:1b}] run tag @s add ca.ricocheted