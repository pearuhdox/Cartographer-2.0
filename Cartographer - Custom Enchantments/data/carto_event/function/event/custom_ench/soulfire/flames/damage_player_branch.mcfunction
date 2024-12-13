execute store result score $random ca.ench_soulfire_lvl run random value 1..15

tag @s add co_rotation_lock

execute if score $random ca.ench_soulfire_lvl matches 1 run rotate @s facing ~1 ~1 ~
execute if score $random ca.ench_soulfire_lvl matches 2 run rotate @s facing ~-1 ~1 ~
execute if score $random ca.ench_soulfire_lvl matches 3 run rotate @s facing ~ ~1 ~1
execute if score $random ca.ench_soulfire_lvl matches 4 run rotate @s facing ~ ~1 ~-1

execute if score $random ca.ench_soulfire_lvl matches 5 run rotate @s facing ~1.5 ~1 ~
execute if score $random ca.ench_soulfire_lvl matches 6 run rotate @s facing ~-1.5 ~1 ~
execute if score $random ca.ench_soulfire_lvl matches 7 run rotate @s facing ~ ~1 ~1.5
execute if score $random ca.ench_soulfire_lvl matches 8 run rotate @s facing ~ ~1 ~-1.5

execute if score $random ca.ench_soulfire_lvl matches 9 run rotate @s facing ~2 ~1 ~
execute if score $random ca.ench_soulfire_lvl matches 10 run rotate @s facing ~-2 ~1 ~
execute if score $random ca.ench_soulfire_lvl matches 11 run rotate @s facing ~ ~1 ~2
execute if score $random ca.ench_soulfire_lvl matches 12 run rotate @s facing ~ ~1 ~-2

execute if score $random ca.ench_soulfire_lvl matches 13.. run rotate @s facing ~ ~1 ~

$data modify entity @s Owner set from entity $(owner) UUID

execute at @s run playsound minecraft:entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 1 1.5

execute unless entity @s[tag=ca.player_spawned] run scoreboard players set @s co_send 9

function motion:motion/push

tag @s remove co_rotation_lock
tag @s remove ca.new