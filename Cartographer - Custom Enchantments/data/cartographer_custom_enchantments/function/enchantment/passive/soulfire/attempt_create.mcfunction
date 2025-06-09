scoreboard players set $is_player ca.ench_soulfire_lvl 0
execute if entity @s[type=player] run scoreboard players set $is_player ca.ench_soulfire_lvl 1

execute if score $is_player ca.ench_soulfire_lvl matches 1.. as @e[type=item_display,tag=ca.soulfire_display,tag=ca.player_spawned,distance=..16,scores={ca.soulfire_time=1..}] run return run function cartographer_custom_enchantments:enchantment/passive/soulfire/transfer_power
execute unless score $is_player ca.ench_soulfire_lvl matches 1.. as @e[type=item_display,tag=ca.soulfire_display,tag=!ca.player_spawned,distance=..16,scores={ca.soulfire_time=1..}] run return run function cartographer_custom_enchantments:enchantment/passive/soulfire/transfer_power

function cartographer_custom_enchantments:enchantment/passive/soulfire/create_flames