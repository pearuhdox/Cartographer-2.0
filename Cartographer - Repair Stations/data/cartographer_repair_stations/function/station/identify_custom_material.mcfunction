scoreboard players set $wooden ca.repair_station_state 0
scoreboard players set $stone ca.repair_station_state 0
scoreboard players set $golden ca.repair_station_state 0
scoreboard players set $iron ca.repair_station_state 0
scoreboard players set $diamond ca.repair_station_state 0
scoreboard players set $netherite ca.repair_station_state 0
scoreboard players set $leather ca.repair_station_state 0
scoreboard players set $chain ca.repair_station_state 0
scoreboard players set $scute ca.repair_station_state 0
scoreboard players set $a_scute ca.repair_station_state 0
scoreboard players set $membrane ca.repair_station_state 0
scoreboard players set $string ca.repair_station_state 0
scoreboard players set $quartz ca.repair_station_state 0
scoreboard players set $redstone ca.repair_station_state 0
scoreboard players set $amethyst ca.repair_station_state 0
scoreboard players set $copper ca.repair_station_state 0
scoreboard players set $emerald ca.repair_station_state 0
scoreboard players set $carrot ca.repair_station_state 0
scoreboard players set $warped ca.repair_station_state 0
scoreboard players set $prismarine ca.repair_station_state 0
scoreboard players set $breeze_rod ca.repair_station_state 0

scoreboard players set $ink ca.repair_station_state 0
scoreboard players set $ender ca.repair_station_state 0
scoreboard players set $gunpowder ca.repair_station_state 0
scoreboard players set $glowstone ca.repair_station_state 0
scoreboard players set $blaze_powder ca.repair_station_state 0
scoreboard players set $blaze_rod ca.repair_station_state 0

scoreboard players set $slime ca.repair_station_state 0
scoreboard players set $magma ca.repair_station_state 0
scoreboard players set $star ca.repair_station_state 0
scoreboard players set $echo ca.repair_station_state 0
scoreboard players set $shulker ca.repair_station_state 0

execute store result score $custom_mat_amt ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.components."minecraft:custom_data".custom_repair.amount

execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"wooden"}}}}}] run scoreboard players set $wooden ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"stone"}}}}}] run scoreboard players set $stone ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"golden"}}}}}] run scoreboard players set $golden ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"iron"}}}}}] run scoreboard players set $iron ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"diamond"}}}}}] run scoreboard players set $diamond ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"netherite"}}}}}] run scoreboard players set $netherite ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"leather"}}}}}] run scoreboard players set $leather ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"chain"}}}}}] run scoreboard players set $chain ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"turtle_scute"}}}}}] run scoreboard players set $scute ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"armadillo_scute"}}}}}] run scoreboard players set $a_scute ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"membrane"}}}}}] run scoreboard players set $membrane ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"string"}}}}}] run scoreboard players set $string ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"quartz"}}}}}] run scoreboard players set $quartz ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"redstone"}}}}}] run scoreboard players set $redstone ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"amethyst"}}}}}] run scoreboard players set $amethyst ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"copper"}}}}}] run scoreboard players set $copper ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"emerald"}}}}}] run scoreboard players set $emerald ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"warped"}}}}}] run scoreboard players set $warped ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"carrot"}}}}}] run scoreboard players set $carrot ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"prismarine"}}}}}] run scoreboard players set $prismarine ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"breeze_rod"}}}}}] run scoreboard players set $breeze_rod ca.repair_station_state 1

execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"ink"}}}}}] run scoreboard players set $ink ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"ender"}}}}}] run scoreboard players set $ender ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"gunpowder"}}}}}] run scoreboard players set $gunpowder ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"glowstone"}}}}}] run scoreboard players set $glowstone ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"blaze_powder"}}}}}] run scoreboard players set $blaze_powder ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"blaze_rod"}}}}}] run scoreboard players set $blaze_rod ca.repair_station_state 1

execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"slime"}}}}}] run scoreboard players set $slime ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"magma"}}}}}] run scoreboard players set $magma ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"star"}}}}}] run scoreboard players set $star ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"echo"}}}}}] run scoreboard players set $echo ca.repair_station_state 1
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{custom_repair:{material:"shulker"}}}}}] run scoreboard players set $shulker ca.repair_station_state 1


scoreboard players operation $wooden ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $stone ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $golden ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $iron ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $diamond ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $netherite ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $leather ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $chain ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $scute ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $a_scute ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $membrane ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $string ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $quartz ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $redstone ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $amethyst ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $copper ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $emerald ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $carrot ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $warped ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $prismarine ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $breeze_rod ca.repair_station_state *= $custom_mat_amt ca.repair_station_state

scoreboard players operation $ink ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $ender ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $gunpowder ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $glowstone ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $blaze_powder ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $blaze_rod ca.repair_station_state *= $custom_mat_amt ca.repair_station_state

scoreboard players operation $slime ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $magma ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $star ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $echo ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $shulker ca.repair_station_state *= $custom_mat_amt ca.repair_station_state