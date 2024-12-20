$execute positioned ^ ^ ^$(half_size) positioned ~-$(half_size) ~-0.5 ~-$(half_size) as @a[dx=$(size_neg_1),dy=2,dz=$(size_neg_1)] at @s run tag @s add ca.cleaving_hit_1
$execute positioned ^ ^ ^$(half_size) as @a[distance=..$(half_size)] at @s run tag @s add ca.cleaving_hit_2
$execute positioned ^ ^1 ^$(half_size) as @a[distance=..$(half_size)] at @s run tag @s add ca.cleaving_hit_2

execute positioned ^ ^ ^-1 positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=1,dz=0] at @s run tag @s add ca.cleaving_hit_1
execute positioned ^ ^ ^-1 positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=1,dz=0] at @s run tag @s add ca.cleaving_hit_2


execute as @a[tag=ca.cleaving_hit_1,tag=ca.cleaving_hit_2] at @s run tag @s add ca.indicator_warning
execute as @a[tag=ca.cleaving_hit_1,tag=ca.cleaving_hit_2] at @s run scoreboard players set @s ca.warning_time 3


tag @a remove ca.cleaving_hit_1
tag @a remove ca.cleaving_hit_2