execute unless entity @s[tag=ca.display_indicator] if score @s ca.is_holding_shield matches 2.. run function cartographer_custom_enchantments:indicator/shield/tick

execute unless entity @s[tag=ca.display_indicator] unless score @s ca.is_holding_shield matches 2.. if score @s ca.shield_stamina_perc matches 1.. if score @s ca.shield_health_perc matches 1.. run function cartographer_custom_enchantments:indicator/shield/tick
execute unless entity @s[tag=ca.display_indicator] unless score @s ca.is_holding_shield matches 2.. unless score @s ca.shield_stamina_perc matches 1.. if score @s ca.shield_health_perc matches 1.. run function cartographer_custom_enchantments:indicator/shield/tick
execute unless entity @s[tag=ca.display_indicator] unless score @s ca.is_holding_shield matches 2.. if score @s ca.shield_stamina_perc matches 1.. unless score @s ca.shield_health_perc matches 1.. run function cartographer_custom_enchantments:indicator/shield/tick
