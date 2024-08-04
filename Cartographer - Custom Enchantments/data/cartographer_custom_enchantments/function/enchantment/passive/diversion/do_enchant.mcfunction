scoreboard players operation $value ca.ench_var = @s ca.ench_diversion_lvl
scoreboard players operation $value ca.ench_var *= $3 ca.CONSTANT

scoreboard players operation $ent ca.ench_var = @s ca.ench_diversion_lvl
scoreboard players operation $ent ca.ench_var /= $2 ca.CONSTANT
execute if score $ent ca.ench_var matches 0 run scoreboard players set $ent ca.ench_var 1

execute store result score $random ca.ench_var run random value 1..100

scoreboard players operation $random ca.ench_var -= @s ca.diversion_entropy

execute if score $random ca.ench_var <= $value ca.ench_var run function cartographer_custom_enchantments:enchantment/passive/diversion/spawn_decoy
execute unless score $random ca.ench_var <= $value ca.ench_var run scoreboard players operation @s ca.diversion_entropy += $ent ca.ench_var