execute if entity @s[nbt={HurtTime:0s}] run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 1 1
$damage @s $(damage) minecraft:player_attack by $(target)
