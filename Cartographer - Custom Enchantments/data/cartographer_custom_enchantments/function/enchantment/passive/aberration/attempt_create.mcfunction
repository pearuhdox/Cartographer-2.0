scoreboard players set $is_player ca.ench_aberration_lvl 0
execute if entity @s[type=player] run scoreboard players set $is_player ca.ench_aberration_lvl 1

scoreboard players set $count ca.aberration_dmg 0
execute if score $is_player ca.ench_aberration_lvl matches 1.. store result score $count ca.aberration_dmg if entity @e[type=sheep,tag=ca.aberration_bomb,tag=ca.player_spawned,distance=..16]
execute unless score $is_player ca.ench_aberration_lvl matches 1.. store result score $count ca.aberration_dmg if entity @e[type=sheep,tag=ca.aberration_bomb,tag=!ca.player_spawned,distance=..16]

execute if score $count ca.aberration_dmg matches 4.. if score $is_player ca.ench_aberration_lvl matches 1.. as @e[type=sheep,tag=ca.aberration_bomb,tag=ca.player_spawned,distance=..16] run return run function cartographer_custom_enchantments:enchantment/passive/aberration/transfer_power
execute if score $count ca.aberration_dmg matches 4.. unless score $is_player ca.ench_aberration_lvl matches 1.. as @e[type=sheep,tag=ca.aberration_bomb,tag=!ca.player_spawned,distance=..16] run return run function cartographer_custom_enchantments:enchantment/passive/aberration/transfer_power

function cartographer_custom_enchantments:enchantment/passive/aberration/create_slime