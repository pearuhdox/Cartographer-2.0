scoreboard players set $allow_statuses ca.ench_eruption_lvl 0
execute if entity @s[tag=ca.apply_status_eruption_self] run scoreboard players set $allow_statuses ca.ench_eruption_lvl 1
execute if entity @s[tag=ca.apply_status_eruption_target] run scoreboard players set $allow_statuses ca.ench_eruption_lvl 1

data modify storage cartographer:custom_enchantments status_enchant_hit.enchantment_hit set value {self:[],target:[]}
