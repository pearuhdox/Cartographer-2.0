scoreboard players operation $damage ca.ench_var = $hex_eater ca.ench_value
scoreboard players operation $damage ca.ench_var *= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $damage ca.ench_var

function cartographer_custom_enchantments:enchantment/weapon/damage/general/hex_eater/debuff_count

execute if score $debuff_count ca.ench_var matches 2.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/hex_eater/damage with storage cartographer:custom_enchantments