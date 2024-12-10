scoreboard players operation $damage ca.ench_var = $concentration ca.ench_value
scoreboard players operation $damage ca.ench_var *= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $damage ca.ench_var

function cartographer_custom_enchantments:enchantment/weapon/damage/general/concentration/damage with storage cartographer:custom_enchantments