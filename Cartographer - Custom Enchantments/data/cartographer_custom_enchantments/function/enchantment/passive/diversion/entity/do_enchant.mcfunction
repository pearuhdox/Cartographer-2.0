scoreboard players set $random ca.ench_diversion_lvl 0
execute unless entity @s[tag=ca.diversion_first_hit] unless entity @s[tag=ca.diversion_half_health] store result score $random ca.ench_diversion_lvl run random value 1..4

execute if score $random ca.ench_diversion_lvl matches 4 run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones

execute if entity @s[tag=ca.diversion_first_hit] run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/first_hit
execute if entity @s[tag=ca.diversion_half_health] run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/half_health