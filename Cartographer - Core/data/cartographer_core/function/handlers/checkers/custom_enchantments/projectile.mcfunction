execute if score @s ca.ench_correction_lvl matches 1.. run data modify entity @s Air set value 1b
execute if score @s ca.ench_correction_lvl matches 1.. unless entity @s[tag=ca.corrected] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/correction/tick

#execute if score @s ca.ench_ricochet_lvl matches 1.. run data modify entity @s Air set value 1b
execute if score @s ca.ench_ricochet_lvl matches 1.. unless entity @s[tag=ca.ricocheted] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/tick

execute if score @s ca.ench_ricochet_lvl matches 1.. if score @s ca.ricochet_cooldown matches 1.. run scoreboard players remove @s ca.ricochet_cooldown 1

execute if score @s ca.ench_barrage_lvl matches 1.. run data modify entity @s Air set value 1b


execute if score @s ca.ench_collapse_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/tick


#Allow Bypass Hits
execute if score @s ca.attr_ranged_damage_total matches -1999999.. if entity @s[tag=ca.allow_damage_bypass,tag=!ca.disabled_arrow] run function cartographer_custom_enchantments:system/projectile_bypass/tick