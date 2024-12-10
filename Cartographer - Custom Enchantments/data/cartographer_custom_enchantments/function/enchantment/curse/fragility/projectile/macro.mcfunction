#stopsound @s * minecraft:entity.player.hurt
execute if entity @s[type=player] run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 0.45 1.5
execute if entity @s[type=player] run playsound minecraft:block.calcite.break player @s ~ ~ ~ 1 0.75

execute unless entity @s[type=player] run playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 0.45 1.5
execute unless entity @s[type=player] run playsound minecraft:block.calcite.break hostile @a[distance=..16] ~ ~ ~ 1 0.75

$particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.05 $(count) normal

$damage @s $(damage) cartographer_custom_enchantments:projectile_damage_bypass_no_kb