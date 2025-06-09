scoreboard players set $is_player ca.ench_eruption_lvl 0
execute if entity @s[type=player] run scoreboard players set $is_player ca.ench_eruption_lvl 1

execute if score $is_player ca.ench_eruption_lvl matches 1.. as @e[type=item_display,tag=ca.eruption_bomb,tag=ca.player_spawned,distance=..12] run return run function cartographer_custom_enchantments:enchantment/passive/eruption/transfer_power
execute unless score $is_player ca.ench_eruption_lvl matches 1.. as @e[type=item_display,tag=ca.eruption_bomb,tag=!ca.player_spawned,distance=..12] run return run function cartographer_custom_enchantments:enchantment/passive/eruption/transfer_power

function cartographer_custom_enchantments:enchantment/passive/eruption/create_explosion