scoreboard players operation $damage ca.ench_var = $hunter ca.ench_value
scoreboard players operation $damage ca.ench_var *= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $damage ca.ench_var

execute unless score $hunter_ignores_spiders ca.gamerule matches 1.. unless score $hunter_ignores_undead ca.gamerule matches 1.. if entity @s[type=#cartographer_custom_enchantments:sensitive_to_hunter] run function cartographer_custom_enchantments:enchantment/weapon/damage/general/duelist/damage with storage cartographer:custom_enchantments
execute unless score $hunter_ignores_spiders ca.gamerule matches 1.. if score $hunter_ignores_undead ca.gamerule matches 1.. if entity @s[type=#cartographer_custom_enchantments:sensitive_to_hunter,type=!#minecraft:sensitive_to_smite] run function cartographer_custom_enchantments:enchantment/weapon/damage/general/duelist/damage with storage cartographer:custom_enchantments
execute if score $hunter_ignores_spiders ca.gamerule matches 1.. unless score $hunter_ignores_undead ca.gamerule matches 1.. if entity @s[type=#cartographer_custom_enchantments:sensitive_to_hunter,type=!#minecraft:sensitive_to_bane_of_arthropods] run function cartographer_custom_enchantments:enchantment/weapon/damage/general/duelist/damage with storage cartographer:custom_enchantments
execute if score $hunter_ignores_spiders ca.gamerule matches 1.. if score $hunter_ignores_undead ca.gamerule matches 1.. if entity @s[type=#cartographer_custom_enchantments:sensitive_to_hunter,type=!#minecraft:sensitive_to_smite,type=!#minecraft:sensitive_to_bane_of_arthropods] run function cartographer_custom_enchantments:enchantment/weapon/damage/general/duelist/damage with storage cartographer:custom_enchantments
