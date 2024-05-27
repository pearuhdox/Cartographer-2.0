$damage @s $(damage) cartographer_custom_statuses:status_damage

playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 2 2
playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 2 2
particle dust{color:[0.043,0.380,0.220],scale:1.50} ~ ~ ~ 0.3 0.3 0.3 1 10 normal
particle enchanted_hit ~ ~ ~ 0.3 0.3 0.3 0.15 20 normal

scoreboard players operation @s ca.exposed_hp -= $damage ca.exposed_hp
scoreboard players operation @s ca.exposed_hp_past = @s ca.exposed_hp