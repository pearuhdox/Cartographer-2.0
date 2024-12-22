function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/custom_statuses/check_allow_status

execute if score $allow_statuses_self ca.ench_riposte_lvl matches 1.. unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/custom_statuses/status_self_mob
execute if score $allow_statuses_self ca.ench_riposte_lvl matches 1.. if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/custom_statuses/status_self_player

scoreboard players operation $mult ca.ench_var = @s ca.ench_riposte_lvl
scoreboard players operation $mult ca.ench_var *= $25 ca.CONSTANT
scoreboard players set $min_result_damage ca.ench_var 200
function cartographer_custom_enchantments:enchantment/helper/calc_adp_dmg

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $result_damage ca.ench_var

tag @s add ca.riposte_owner

execute on attacker run function carto_event:event/custom_ench/riposte/macro with storage cartographer:custom_enchantments

tag @s remove ca.riposte_owner