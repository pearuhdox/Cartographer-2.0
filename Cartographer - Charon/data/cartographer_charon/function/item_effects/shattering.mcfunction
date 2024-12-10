data modify storage cartographer_core:helper get_durability set value {}
data modify storage cartographer_core:helper get_durability set from storage cartographer_charon:player temp
function cartographer_core:helper/functions/get_durability/calc_max
scoreboard players operation $shattering_dur ca.ench_var = $durability ca.var
scoreboard players operation $shattering_max ca.ench_var = $durability ca.var

execute store result score $shattering_cur ca.ench_var run data get storage cartographer_charon:player temp.components.minecraft:damage

scoreboard players operation $shattering_dur ca.ench_var -= $shattering_cur ca.ench_var

scoreboard players operation $shattering_dur ca.ench_var *= $67 ca.CONSTANT
scoreboard players operation $shattering_dur ca.ench_var /= $100 ca.CONSTANT

scoreboard players operation $shattering_max ca.ench_var -= $shattering_dur ca.ench_var

execute if score $shattering_dur ca.ench_var matches ..0 run scoreboard players set $shattering_dur ca.ench_var 1
execute store result storage cartographer_charon:player temp.components.minecraft:damage int 1 run scoreboard players get $shattering_max ca.ench_var
