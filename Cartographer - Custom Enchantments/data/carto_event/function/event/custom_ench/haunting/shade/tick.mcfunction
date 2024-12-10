
$execute as $(target) at @s if entity @s[nbt={HurtTime:9s},nbt={DeathTime:0s}] run playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 1.5 0.5
$execute as $(target) at @s if entity @s[nbt={DeathTime:1s}] run playsound minecraft:entity.vex.death player @a ~ ~ ~ 0.8 0.5

$execute as $(target) at @s run return 1
return 0