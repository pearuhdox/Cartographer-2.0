scoreboard players operation $value ca.ench_var = @s ca.ench_diversion_lvl
scoreboard players operation $value ca.ench_var *= $3 ca.CONSTANT

scoreboard players operation $ent ca.ench_var = @s ca.ench_diversion_lvl
scoreboard players operation $ent ca.ench_var /= $2 ca.CONSTANT
execute if score $ent ca.ench_var matches 0 run scoreboard players set $ent ca.ench_var 1

scoreboard players operation $target ca.rand = $value ca.ench_var
scoreboard players operation $entropy ca.rand = @s ca.diversion_entropy
function cartographer_core:handlers/random/roll

execute if score $success ca.rand matches 1.. run function cartographer_custom_enchantments:enchantment/passive/diversion/spawn_decoy
execute unless score $success ca.rand matches 1.. run scoreboard players operation @s ca.diversion_entropy += $ent ca.ench_var