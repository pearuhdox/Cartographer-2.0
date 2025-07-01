
#Set the system for freezing on - a custom creeper exists, we need FreezeDamage disabled
$execute as $(target) at @s run scoreboard players set $timer ca.ticks_frozen 4

#End the event when the creeper no longer exists or when we detect that it is killed
$execute as $(target) at @s if entity @s[nbt={DeathTime:1s}] run return 0
$execute as $(target) at @s run return 1
return 0