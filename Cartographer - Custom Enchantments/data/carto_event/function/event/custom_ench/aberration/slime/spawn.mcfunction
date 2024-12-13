tag @s remove ca.aberration_spawn

execute if entity @s[tag=ca.player_spawned] on passengers at @s facing entity @e[type=#cartographer_core:affected_by_carto,limit=1,sort=nearest,distance=..32] feet rotated ~180 0 run rotate @s ~ ~
execute if entity @s[tag=ca.mob_spawned] on passengers at @s facing entity @p[distance=..32] feet rotated ~180 0 run rotate @s ~ ~

scoreboard players operation $splits ca.aberration_splits = @s ca.aberration_splits
execute on passengers run scoreboard players operation @s ca.aberration_splits = $splits ca.aberration_splits

execute on passengers if score @s ca.aberration_splits matches 0 run data merge entity @s {interpolation_duration:9,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1.2f,1.2f,1.2f]}}
execute on passengers if score @s ca.aberration_splits matches 1 run data merge entity @s {interpolation_duration:9,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.3f,0f],scale:[1.7f,1.7f,1.7f]}}
execute on passengers if score @s ca.aberration_splits matches 2 run data merge entity @s {interpolation_duration:9,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.3f,0f],scale:[2.2f,2.2f,2.2f]}}
execute on passengers if score @s ca.aberration_splits matches 3 run data merge entity @s {interpolation_duration:9,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.3f,0f],scale:[2.7f,2.7f,2.7f]}}
execute on passengers if score @s ca.aberration_splits matches 4.. run data merge entity @s {interpolation_duration:9,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.3f,0f],scale:[3.2f,3.2f,3.2f]}}