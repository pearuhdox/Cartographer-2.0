execute store result score $reconstruction_damage ca.ench_var run data get storage cartographer_custom_enchantments:reconstruction item_check.components.minecraft:damage
execute if score $reconstruction_damage ca.ench_var matches 1.. if score $success ca.rand matches 1.. run scoreboard players remove $reconstruction_damage ca.ench_var 1
execute if score $reconstruction_damage ca.ench_var matches 1.. if score $extra_dur ca.reconstruction_entropy matches 1.. run scoreboard players remove $reconstruction_damage ca.ench_var 1
execute if score $reconstruction_damage ca.ench_var matches 1.. if score $extra_dur ca.reconstruction_entropy matches 2.. run scoreboard players remove $reconstruction_damage ca.ench_var 1
execute store result storage cartographer_custom_enchantments:reconstruction item_check.components.minecraft:damage int 1 run scoreboard players get $reconstruction_damage ca.ench_var

data remove storage cartographer_custom_enchantments:reconstruction item_check.Slot

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:reconstruction item_check