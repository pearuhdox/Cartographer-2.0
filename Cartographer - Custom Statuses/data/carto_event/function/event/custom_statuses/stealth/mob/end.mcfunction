execute if score @s ca.stealth_silent matches 0 run data modify entity @s Silent set value 0b

execute if score @s ca.stealth_powered matches 1 run data modify entity @s powered set value 1b

execute if score @s ca.stealth_pickup matches 1 run data modify entity @s CanPickUpLoot set value 1b


$execute if score @s ca.stealth_keep_equipment matches 0 run data modify entity @s equipment set from storage cartographer_custom_statuses:stealth equip_data.$(target).equipment

$data remove storage cartographer_custom_statuses:stealth equip_data.$(target)

effect clear @s invisibility
effect clear @s resistance

playsound minecraft:block.anvil.place hostile @a[distance=..12] ~ ~ ~ 0.5 2
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 0.5
playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..12] ~ ~ ~ 1.5 1.5

particle minecraft:gust_emitter_small ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:large_smoke ~ ~0.35 ~ 0.2 0.2 0.2 0.05 15 force

scoreboard players set $end_stealth ca.status_var 1

tag @s remove ca.has_custom_status_stealth_mob