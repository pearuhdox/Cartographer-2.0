
execute if entity @s[tag=ca.indicator_cc] if score @s ca.no_cc matches 1 run scoreboard players set @s ca.cc_time 0
execute if entity @s[tag=ca.indicator_cc] if score @s ca.no_cc matches 1 run tag @s remove ca.indicator_cc
execute if entity @s[tag=ca.indicator_cc] run function cartographer_custom_enchantments:indicator/cc/tick

execute if entity @s[tag=ca.indicator_charging] if score @s ca.no_charging matches 1 run scoreboard players set @s ca.charging_time 0
execute if entity @s[tag=ca.indicator_charging] if score @s ca.no_charging matches 1 run tag @s remove ca.indicator_charging
execute if entity @s[tag=ca.indicator_charging] run function cartographer_custom_enchantments:indicator/charging/tick