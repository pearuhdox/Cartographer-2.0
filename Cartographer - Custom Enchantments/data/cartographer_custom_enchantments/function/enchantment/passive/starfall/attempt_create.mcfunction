scoreboard players set $player_owned ca.ench_starfall_lvl 0
execute if entity @s[type=player] run scoreboard players set $player_owned ca.ench_starfall_lvl 1

scoreboard players set $count ca.starfall_dmg 0
execute if score $player_owned ca.ench_starfall_lvl matches 1.. store result score $count ca.starfall_dmg if entity @e[type=text_display,tag=!ca.damaging,tag=ca.starfall_telegraph,tag=ca.player_owned,distance=..12]
execute unless score $player_owned ca.ench_starfall_lvl matches 1.. store result score $count ca.starfall_dmg if entity @e[type=text_display,tag=!ca.damaging,tag=ca.starfall_telegraph,tag=!ca.player_owned,distance=..12]

execute if score $count ca.starfall_dmg matches 2.. if score $player_owned ca.ench_starfall_lvl matches 1.. as @e[type=text_display,tag=!ca.damaging,tag=ca.starfall_telegraph,tag=ca.player_owned,distance=..12] run return run function cartographer_custom_enchantments:enchantment/passive/starfall/transfer_power
execute if score $count ca.starfall_dmg matches 2.. unless score $player_owned ca.ench_starfall_lvl matches 1.. as @e[type=text_display,tag=!ca.damaging,tag=ca.starfall_telegraph,tag=!ca.player_owned,distance=..12] run return run function cartographer_custom_enchantments:enchantment/passive/starfall/transfer_power

function cartographer_custom_enchantments:enchantment/passive/starfall/create_meteor