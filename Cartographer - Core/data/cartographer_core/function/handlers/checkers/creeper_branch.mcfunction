#say creeper

#Add Inactivity to the marker - 1 per tick, unless in full light, then 3 per tick
#Force Inactivity to 0 if the creeper is ignited or if a player re-enters 32 blocks of range

execute unless entity @a[distance=..32] on passengers if entity @s[type=marker] run scoreboard players add @s ca.inactivity 1
execute unless entity @a[distance=..32] if predicate cartographer_core:world/despawn_light on passengers if entity @s[type=marker] run scoreboard players add @s ca.inactivity 2
execute unless entity @a[distance=..32] store result score $ignited ca.inactivity run data get entity @s ignited
execute unless entity @a[distance=..32] on passengers if score $ignited ca.inactivity matches 1.. run scoreboard players set @s ca.inactivity 0
execute if entity @a[distance=..32] on passengers if entity @s[type=marker] run scoreboard players set @s ca.inactivity 0

#If the creeper has a target, it can't be inactive.
scoreboard players set $has_target ca.inactivity 0
execute on target run scoreboard players set $has_target ca.inactivity 1
execute if score $has_target ca.inactivity matches 1.. on passengers if entity @s[type=marker] run scoreboard players set @s ca.inactivity 0

scoreboard players set $creeper_check ca.systems 20