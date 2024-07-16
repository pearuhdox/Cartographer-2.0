$damage @s $(damage) cartographer_custom_statuses:status_damage

playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 2 2
playsound minecraft:entity.elder_guardian.hurt hostile @a[distance=..16] ~ ~ ~ 0.65 2

particle dust{color:[0.176,0.678,0.561],scale:1.50} ~ ~1 ~ 0.3 0.3 0.3 1 10 normal
particle enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 0.15 20 normal