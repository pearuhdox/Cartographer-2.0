execute unless score @s ca.aberration_jump matches 1.. if entity @s[tag=ca.player_spawned] on passengers at @s facing entity @e[type=#cartographer_core:affected_by_carto,limit=1,sort=nearest,distance=0.1..16,tag=!ca.aberration_bomb] feet rotated ~180 0 run rotate @s ~ ~
execute unless score @s ca.aberration_jump matches 1.. if entity @s[tag=ca.mob_spawned] on passengers at @s facing entity @p[distance=..16] feet rotated ~180 0 run rotate @s ~ ~

execute unless score @s ca.aberration_jump matches 1.. run playsound minecraft:entity.slime.squish_small hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute unless score @s ca.aberration_jump matches 1.. run particle minecraft:item_slime ~ ~0.1 ~ 0.3 0.1 0.3 0.1 20 normal

scoreboard players set $do_explode ca.ench_aberration_lvl 0
$execute unless score @s ca.aberration_anim matches 1.. if score duration= carto_event matches ..570 if entity @s[tag=ca.player_spawned] if entity @e[type=#cartographer_core:affected_by_carto,limit=1,sort=nearest,distance=..$(half_size)] run scoreboard players set $do_explode ca.ench_aberration_lvl 1
$execute unless score @s ca.aberration_anim matches 1.. if score duration= carto_event matches ..570 unless entity @s[tag=ca.player_spawned] if entity @a[limit=1,sort=nearest,distance=..$(half_size)] run scoreboard players set $do_explode ca.ench_aberration_lvl 1

execute if score $do_explode ca.ench_aberration_lvl matches 1.. run scoreboard players set @s ca.aberration_time 10
execute unless score @s ca.aberration_jump matches 1.. unless score $do_explode ca.ench_aberration_lvl matches 1.. run function carto_event:event/custom_ench/aberration/slime/jump_finish
