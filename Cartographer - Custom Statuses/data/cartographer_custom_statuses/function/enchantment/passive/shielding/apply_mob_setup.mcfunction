scoreboard players operation $mob_start_amount ca.ench_shielding_lvl = @s ca.ench_shielding_lvl
scoreboard players add $mob_start_amount ca.ench_shielding_lvl 5
execute if score $mob_start_amount ca.ench_shielding_lvl matches 13.. run scoreboard players set $mob_start_amount ca.ench_shielding_lvl 12

execute store result score $abs_start ca.ench_shielding_lvl run data get entity @s AbsorptionAmount 1

scoreboard players operation $abs_start ca.ench_shielding_lvl += $mob_start_amount ca.ench_shielding_lvl

execute store result entity @s AbsorptionAmount double 1 run scoreboard players get $mob_start_amount ca.ench_shielding_lvl

tag @s add ca.shielding_applied_mob