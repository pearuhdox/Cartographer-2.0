#scoreboard players operation $chance ca.ench_orbit_lvl = $lvl ca.ench_orbit_lvl
#scoreboard players operation $chance ca.ench_orbit_lvl *= $5 ca.CONSTANT

scoreboard players set $chance ca.ench_orbit_lvl 20

execute on attacker if entity @s[type=player] run scoreboard players set $speed ca.ench_orbit_lvl 9
execute on attacker unless entity @s[type=player] run scoreboard players set $speed ca.ench_orbit_lvl 5


execute on attacker if entity @s[type=player] run scoreboard players set $hit_start ca.ench_orbit_lvl 6
execute on attacker unless entity @s[type=player] run scoreboard players set $hit_start ca.ench_orbit_lvl 3


$scoreboard players set $proc_coeff ca.ench_orbit_lvl $(proc_chance)

scoreboard players operation $target ca.rand = $chance ca.ench_orbit_lvl

scoreboard players operation $target ca.rand *= $proc_coeff ca.ench_orbit_lvl
scoreboard players operation $target ca.rand /= $100 ca.CONSTANT

scoreboard players set $success ca.rand 0
execute on attacker run scoreboard players operation $entropy ca.rand = @s ca.orbit_entropy
execute on attacker if score $target ca.rand matches 1.. run function cartographer_core:handlers/random/roll

execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.orbit_entropy = $target ca.rand
execute unless score $success ca.rand matches 1.. run scoreboard players operation $value ca.orbit_entropy /= $10 ca.CONSTANT
execute unless score $success ca.rand matches 1.. if score $value ca.orbit_entropy matches ..0 run scoreboard players set $value ca.orbit_entropy 1
execute unless score $success ca.rand matches 1.. on attacker run scoreboard players operation @s ca.orbit_entropy += $value ca.orbit_entropy

execute if score $success ca.rand matches 1.. on attacker run function cartographer_custom_enchantments:enchantment/passive/orbit/get_data

execute if score $success ca.rand matches 1.. on attacker run function cartographer_custom_enchantments:enchantment/passive/orbit/create_orbital

execute on attacker run scoreboard players add @s ca.orbit_tick_cap 1
execute on attacker run function carto_event:api/create_single_entity_event {event:"custom_ench/orbit/cap",duration:1,delay:0,parameters:{},merge_behavior:"none"}