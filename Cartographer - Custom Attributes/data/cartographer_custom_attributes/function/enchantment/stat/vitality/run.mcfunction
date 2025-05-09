
execute if score @s ca.ench_vitality_lvl matches 1.. run function cartographer_custom_attributes:enchantment/stat/vitality/do_enchant
execute unless entity @s[type=player] unless entity @s[tag=ca.vitality_mob_healed] if predicate cartographer_core:periodic_tick/20 run function cartographer_custom_attributes:enchantment/stat/vitality/mob_heal
