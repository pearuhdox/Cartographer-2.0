scoreboard players set $is_player ca.ench_quake_lvl 0
execute if entity @s[type=player] run scoreboard players set $is_player ca.ench_quake_lvl 1

execute if score $is_player ca.ench_quake_lvl matches 1.. as @e[type=marker,tag=ca.quake_marker,tag=ca.player_spawned,distance=..12,scores={ca.quake_time=..9}] run return run function cartographer_custom_enchantments:enchantment/passive/quake/transfer_power
execute unless score $is_player ca.ench_quake_lvl matches 1.. as @e[type=marker,tag=ca.quake_marker,tag=!ca.player_spawned,distance=..12,scores={ca.quake_time=..9}] run return run function cartographer_custom_enchantments:enchantment/passive/quake/transfer_power

function cartographer_custom_enchantments:enchantment/passive/quake/create_charge