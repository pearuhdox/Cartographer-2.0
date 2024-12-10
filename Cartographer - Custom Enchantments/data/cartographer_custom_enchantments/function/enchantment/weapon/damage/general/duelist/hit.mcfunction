scoreboard players operation $damage ca.ench_var = $duelist ca.ench_value
scoreboard players operation $damage ca.ench_var *= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $damage ca.ench_var

execute unless score $duelist_ignores_undead ca.gamerule matches 1.. if entity @s[type=#cartographer_custom_enchantments:sensitive_to_duelist] run function cartographer_custom_enchantments:enchantment/weapon/damage/general/duelist/damage with storage cartographer:custom_enchantments
execute if score $duelist_ignores_undead ca.gamerule matches 1.. if entity @s[type=#cartographer_custom_enchantments:sensitive_to_duelist,type=!#minecraft:sensitive_to_smite] run function cartographer_custom_enchantments:enchantment/weapon/damage/general/duelist/damage with storage cartographer:custom_enchantments
