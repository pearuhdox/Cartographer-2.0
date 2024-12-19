#$execute as $(target) at @s run say hi
$execute as $(target) if entity @s[nbt={DeathTime:0s}] as $(player) at @s run gamemode spectator @s

$execute as $(target) at @s run return 1
return 0