execute if entity @s[tag=ca.player_spawned] on passengers at @s facing entity @e[type=#bb:hostile,limit=1,sort=nearest,distance=..16] feet rotated ~180 0 run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=ca.mob_spawned] on passengers at @s facing entity @p[distance=..16] feet rotated ~180 0 run tp @s ~ ~ ~ ~ ~

playsound minecraft:entity.slime.squish_small hostile @a[distance=..16] ~ ~ ~ 1 0.5

particle minecraft:item_slime ~ ~0.1 ~ 0.3 0.1 0.3 0.1 20 normal

scoreboard players set $do_explode ca.ench_aberration_lvl 0
$execute if score duration= carto_event matches ..570 if entity @s[tag=ca.player_spawned] if entity @e[type=#bb:hostile,limit=1,sort=nearest,distance=..$(half_size)] run scoreboard players set $do_explode ca.ench_aberration_lvl 1
$execute if score duration= carto_event matches ..570 unless entity @s[tag=ca.player_spawned] if entity @a[limit=1,sort=nearest,distance=..$(half_size)] run scoreboard players set $do_explode ca.ench_aberration_lvl 1

execute if score $do_explode ca.ench_aberration_lvl matches 1.. run scoreboard players set @s ca.aberration_time 7
execute unless score $do_explode ca.ench_aberration_lvl matches 1.. run function carto_event:event/custom_ench/aberration/slime/jump_finish
