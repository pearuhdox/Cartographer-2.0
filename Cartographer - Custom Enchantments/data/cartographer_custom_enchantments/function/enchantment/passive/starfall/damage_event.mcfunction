execute on attacker run scoreboard players operation $lvl ca.ench_starfall_lvl = $starfall ca.ench_value

#scoreboard players operation $chance ca.ench_starfall_lvl = $lvl ca.ench_starfall_lvl
#scoreboard players operation $chance ca.ench_starfall_lvl *= $5 ca.CONSTANT
scoreboard players set $chance ca.ench_starfall_lvl 20

$scoreboard players set $proc_coeff ca.ench_starfall_lvl $(proc_chance)

scoreboard players operation $target ca.rand = $chance ca.ench_starfall_lvl

scoreboard players operation $target ca.rand *= $proc_coeff ca.ench_starfall_lvl
scoreboard players operation $target ca.rand /= $100 ca.CONSTANT

scoreboard players set $success ca.rand 0
execute on attacker run scoreboard players operation $entropy ca.rand = @s ca.starfall_entropy
execute on attacker if score $target ca.rand matches 1.. run function cartographer_core:handlers/random/roll

execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.starfall_entropy = $target ca.rand
execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.starfall_entropy /= $10 ca.CONSTANT
execute unless score $success ca.rand matches 1.. if score $value ca.starfall_entropy matches ..0 run scoreboard players set $value ca.starfall_entropy 1
execute unless score $success ca.rand matches 1.. on attacker run scoreboard players operation @s ca.starfall_entropy += $value ca.starfall_entropy

execute on attacker if score $success ca.rand matches 1.. run function cartographer_custom_enchantments:enchantment/passive/starfall/get_data
execute if score $success ca.rand matches 1.. run function cartographer_custom_enchantments:enchantment/passive/starfall/get_position

execute on attacker if score $success ca.rand matches 1.. run function cartographer_custom_enchantments:enchantment/passive/starfall/custom_statuses/check_allow_status

execute on attacker if score $success ca.rand matches 1.. if score $allow_statuses ca.ench_starfall_lvl matches 1.. if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/starfall/custom_statuses/status_player
execute on attacker if score $success ca.rand matches 1.. if score $allow_statuses ca.ench_starfall_lvl matches 1.. unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/starfall/custom_statuses/status_mob

execute on attacker if score $success ca.rand matches 1.. run function cartographer_custom_enchantments:enchantment/passive/starfall/attempt_create

execute on attacker run scoreboard players add @s ca.starfall_tick_cap 1
execute on attacker run function carto_event:api/create_single_entity_event {event:"custom_ench/starfall/cap",duration:1,delay:0,parameters:{},merge_behavior:"none"}