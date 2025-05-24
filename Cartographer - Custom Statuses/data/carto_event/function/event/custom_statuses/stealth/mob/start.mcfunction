$scoreboard players set @s ca.stealth_keep_equipment $(keep_equipment)

execute store result score @s ca.stealth_silent run data get entity @s Silent
data modify entity @s Silent set value 1b

execute store result score @s ca.stealth_pickup run data get entity @s CanPickUpLoot
data modify entity @s CanPickUpLoot set value 0b

execute store result score @s ca.stealth_powered run data get entity @s powered
data modify entity @s powered set value 0b

 
$execute if score @s ca.stealth_keep_equipment matches 0 run data modify storage cartographer_custom_statuses:stealth equip_data.$(target) set value {}

$execute if score @s ca.stealth_keep_equipment matches 0 run data modify storage cartographer_custom_statuses:stealth equip_data.$(target).equipment set from entity @s equipment

execute if score @s ca.stealth_keep_equipment matches 0 run data modify entity @s equipment set value {}
