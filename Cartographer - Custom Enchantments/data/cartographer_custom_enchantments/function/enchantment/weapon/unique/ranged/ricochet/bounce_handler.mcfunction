function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/start_bounce

#execute unless entity @s[tag=ca.update_motion] run scoreboard players set $bounce_check ca.ench_ricochet_lvl 0

execute if entity @s[tag=ca.update_motion] run data modify entity @s Motion[0] set from storage cartographer_custom_enchantments:ricochet Motion[0]
execute if entity @s[tag=ca.update_motion] run data modify entity @s Motion[1] set from storage cartographer_custom_enchantments:ricochet Motion[1]
execute if entity @s[tag=ca.update_motion] run data modify entity @s Motion[2] set from storage cartographer_custom_enchantments:ricochet Motion[2]
execute if entity @s[tag=ca.update_motion] run scoreboard players set @s ca.ricochet_cooldown 1
execute if entity @s[tag=ca.update_motion] run scoreboard players remove $bounce_check ca.ench_ricochet_lvl 1
execute if entity @s[tag=ca.update_motion] run tag @s remove ca.update_motion