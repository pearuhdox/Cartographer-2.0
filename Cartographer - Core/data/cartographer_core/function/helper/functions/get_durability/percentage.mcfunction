function cartographer_core:helper/functions/get_durability/calc_max

execute store result score $durability_percent ca.var run data get storage cartographer_core:helper get_durability.components.minecraft:damage

scoreboard players operation $durability_percent ca.var *= $100 ca.CONSTANT
scoreboard players operation $durability_percent ca.var /= $durability ca.var