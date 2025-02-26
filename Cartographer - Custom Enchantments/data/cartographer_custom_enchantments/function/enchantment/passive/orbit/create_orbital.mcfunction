execute store result score $rot ca.ench_orbit_lvl run data get entity @s Rotation[0] 1
scoreboard players add $rot ca.ench_orbit_lvl 180
execute if score $rot ca.ench_orbit_lvl matches 181.. run scoreboard players remove $rot ca.ench_orbit_lvl 360

#Bonus Speed to Orbs divided by 10 then +1 - decreases over time
execute unless entity @s[type=player] run scoreboard players set @s ca.orbit_bonus_speed 40
execute unless entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_ench/orbit",duration:40,delay:000,parameters:{},merge_behavior:"none"}

execute if entity @s[type=player] run scoreboard players set @s ca.orbit_bonus_speed 80
execute if entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_ench/orbit",duration:80,delay:000,parameters:{},merge_behavior:"none"}

execute store result storage cartographer:custom_enchantments rotation int 1 run scoreboard players get $rot ca.ench_orbit_lvl

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $result_damage ca.ench_var

execute store result storage cartographer:custom_enchantments size double 0.01 run scoreboard players get $size ca.ench_orbit_lvl
execute store result storage cartographer:custom_enchantments half_size double 0.01 run scoreboard players get $half_size ca.ench_orbit_lvl
execute store result storage cartographer:custom_enchantments size_neg_1 double 0.01 run scoreboard players get $size_neg_1 ca.ench_orbit_lvl
execute store result storage cartographer:custom_enchantments length double 0.01 run scoreboard players get $length ca.ench_orbit_lvl

execute store result storage cartographer:custom_enchantments speed int 1 run scoreboard players get $speed ca.ench_orbit_lvl
execute store result storage cartographer:custom_enchantments hits int 1 run scoreboard players get $hit_start ca.ench_orbit_lvl

execute store result storage cartographer:custom_enchantments delay int 1 run scoreboard players get @s ca.orbit_delay
execute run scoreboard players add @s ca.orbit_delay 15

scoreboard players set $is_player ca.ench_orbit_lvl 0
execute if entity @s[type=player] run scoreboard players set $is_player ca.ench_orbit_lvl 1

scoreboard players set $user_id ca.ench_orbit_lvl 0

scoreboard players set $disable ca.disable_other_skins 0
execute if score @s ca.disable_other_skins matches 1.. run scoreboard players set $disable ca.disable_other_skins 1

execute unless score @s ca.disable_player_skins matches 1.. if entity @s[name=Matoreichon] run scoreboard players set $user_id ca.ench_orbit_lvl 1
execute unless score @s ca.disable_player_skins matches 1.. if entity @s[name=Matoreichon] run scoreboard players set $user_id ca.ench_orbit_lvl 1

execute unless score @s ca.disable_player_skins matches 1.. if entity @s[name=UserOwo] run scoreboard players set $user_id ca.ench_orbit_lvl 47
execute unless score @s ca.disable_player_skins matches 1.. if entity @s[name=ConeOfSnow] run scoreboard players set $user_id ca.ench_orbit_lvl 47

execute unless score @s ca.disable_player_skins matches 1.. if entity @s[name=PearUhDox] run scoreboard players set $user_id ca.ench_orbit_lvl 47

execute at @s rotated ~ 0 positioned ^ ^ ^-3.5 summon item_display run function cartographer_custom_enchantments:enchantment/passive/orbit/item_display_branch

function cartographer_custom_enchantments:enchantment/passive/orbit/create_orbital_macro with storage cartographer:custom_enchantments
scoreboard players add @s ca.orbit_ct 1

execute run scoreboard players set @s ca.orbit_entropy 0