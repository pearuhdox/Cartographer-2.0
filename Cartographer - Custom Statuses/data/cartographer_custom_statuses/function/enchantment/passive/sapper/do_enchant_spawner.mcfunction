scoreboard players operation $value ca.ench_var = @s ca.ench_sapper_main_lvl

particle entity_effect{color:[0.804,0.361,0.671,1.00]} ~ ~0.2 ~ 0.4 0.2 0.4 1 8 normal

execute if entity @s[type=player] run function cartographer_custom_statuses:enchantment/passive/sapper/heal_player
execute unless entity @s[type=player] run function cartographer_custom_statuses:enchantment/passive/sapper/heal_mob
