$scoreboard players set @s ca.stealth_keep_armor $(keep_armor)
$scoreboard players set @s ca.stealth_keep_weapons $(keep_weapons)

execute store result score @s ca.stealth_silent run data get entity @s Silent
data modify entity @s Silent set value 1b

execute store result score @s ca.stealth_powered run data get entity @s powered
data modify entity @s powered set value 0b

$execute if score @s ca.stealth_keep_armor matches 0 run data modify storage cartographer_custom_statuses:stealth equip_data.$(target) set value {}
$execute if score @s ca.stealth_keep_weapons matches 0 run data modify storage cartographer_custom_statuses:stealth equip_data.$(target) set value {}

$execute if score @s ca.stealth_keep_armor matches 0 run data modify storage cartographer_custom_statuses:stealth equip_data.$(target).ArmorItems set from entity @s ArmorItems
$execute if score @s ca.stealth_keep_weapons matches 0 run data modify storage cartographer_custom_statuses:stealth equip_data.$(target).HandItems set from entity @s HandItems

execute if score @s ca.stealth_keep_armor matches 0 run data modify entity @s ArmorItems set value []
execute if score @s ca.stealth_keep_weapons matches 0 run data modify entity @s HandItems set value []