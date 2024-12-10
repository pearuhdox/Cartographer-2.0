execute if score $crumbling_damage ca.ench_var matches 0.. run scoreboard players add $crumbling_damage ca.ench_var 1
execute if score $crumbling_damage ca.ench_var > $crumbling_max ca.ench_var run scoreboard players operation $crumbling_damage ca.ench_var = $crumbling_max ca.ench_var
execute store result storage cartographer_custom_enchantments:crumbling item_check.components.minecraft:damage int 1 run scoreboard players get $crumbling_damage ca.ench_var

data remove storage cartographer_custom_enchantments:crumbling item_check.Slot

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:crumbling item_check