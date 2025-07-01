$execute as $(target) at @s if entity @s[nbt={DeathTime:1s}] run function cartographer_mob_utils:listener/death with entity @s data 

$execute as $(target) at @s run return 1

return 0