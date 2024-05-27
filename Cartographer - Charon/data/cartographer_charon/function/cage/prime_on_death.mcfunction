scoreboard players set $layer cage.var 0

#Place no cages, we care about spawner priming.
scoreboard players set $cage_stock cage.var 0

#Run the spawner finder to place prime AECs at each spawner
execute align xyz positioned ~-32 ~-32 ~-32 run function cartographer_charon:cage/create_cage/layer

#Now prime the spawners
execute as @e[type=area_effect_cloud,tag=ca.charon_prime_spawner] at @s run function cartographer_charon:cage/spawner_prime