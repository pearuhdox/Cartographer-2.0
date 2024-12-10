scoreboard players set $allow_statuses ca.ench_starfall_lvl 0
execute if entity @s[tag=ca.apply_status_starfall_self] run scoreboard players set $allow_statuses ca.ench_starfall_lvl 1
execute if entity @s[tag=ca.apply_status_starfall_target] run scoreboard players set $allow_statuses ca.ench_starfall_lvl 1

data modify storage cartographer:custom_enchantments status_enchant_hit.enchantment_hit set value {self:[],target:[]}
