
execute if score @s ca.ench_invigorated_lvl matches 1.. run function cartographer_custom_attributes:enchantment/stat/invigorated/do_enchant

#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/healing_power/tracking_start