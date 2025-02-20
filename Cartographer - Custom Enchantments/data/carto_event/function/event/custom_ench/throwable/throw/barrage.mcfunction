scoreboard players operation $barrage_ct ca.ench_barrage_lvl = @s ca.ench_barrage_lvl
scoreboard players operation $barrage_time_mult ca.ench_barrage_lvl = @s ca.ench_barrage_lvl
scoreboard players add $barrage_time_mult ca.ench_barrage_lvl 1

execute if entity @s[type=player] run scoreboard players set $barrage_time ca.ench_barrage_lvl 6
execute unless entity @s[type=player] run scoreboard players set $barrage_time ca.ench_barrage_lvl 12
scoreboard players operation $barrage_time ca.ench_barrage_lvl -= $barrage_time_mult ca.ench_barrage_lvl
execute if entity @s[type=player] if score $barrage_time ca.ench_barrage_lvl matches ..0 run scoreboard players set $barrage_time ca.ench_barrage_lvl 1
execute unless entity @s[type=player] if score $barrage_time ca.ench_barrage_lvl matches ..1 run scoreboard players set $barrage_time ca.ench_barrage_lvl 2

execute store result storage cartographer:custom_enchantments barrage_mod int 1 run scoreboard players get $barrage_time ca.ench_barrage_lvl

scoreboard players operation $barrage_time ca.ench_barrage_lvl *= $barrage_ct ca.ench_barrage_lvl

execute store result storage cartographer:custom_enchantments barrage_ct int 1 run scoreboard players get $barrage_ct ca.ench_barrage_lvl
execute store result storage cartographer:custom_enchantments barrage_time int 1 run scoreboard players get $barrage_time ca.ench_barrage_lvl

function carto_event:event/custom_ench/throwable/throw/barrage_macro with storage cartographer:custom_enchantments