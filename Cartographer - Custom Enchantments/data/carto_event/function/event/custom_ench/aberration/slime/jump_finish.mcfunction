tag @s add co_rotation_lock

execute if entity @s[tag=ca.player_spawned] run scoreboard players set @s co_send -8
execute if entity @s[tag=ca.player_spawned] run scoreboard players set @s co_y 3

execute unless entity @s[tag=ca.player_spawned] run scoreboard players set @s co_send -7
execute unless entity @s[tag=ca.player_spawned] run scoreboard players set @s co_y 4

execute on passengers rotated as @s on vehicle run rotate @s ~ ~
function motion:motion/push

tag @s remove co_rotation_lock

execute store result score @s ca.aberration_jump run random value 0..10

execute if entity @s[tag=ca.player_spawned] run scoreboard players add @s ca.aberration_jump 15
execute unless entity @s[tag=ca.player_spawned] run scoreboard players add @s ca.aberration_jump 20

scoreboard players set @s ca.aberration_anim 10