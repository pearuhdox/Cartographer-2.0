scoreboard players set $success ca.rand 0
$scoreboard players set $crumbling_slot ca.ench_var $(slot)

$scoreboard players set $target ca.rand $(level)
scoreboard players operation $target ca.rand *= $5 ca.CONSTANT

function cartographer_core:handlers/random/roll


execute if score $success ca.rand matches 1.. run data modify storage cartographer_core:helper get_durability set value {}
execute if score $success ca.rand matches 1.. run data modify storage cartographer_core:helper get_durability set from storage cartographer_custom_enchantments:crumbling item_check
execute if score $success ca.rand matches 1.. run function cartographer_core:helper/functions/get_durability/calc_max
execute if score $success ca.rand matches 1.. run scoreboard players operation $crumbling_max ca.ench_var = $durability ca.var

execute if score $success ca.rand matches 1.. run scoreboard players operation $crumbling_max ca.ench_var *= $90 ca.CONSTANT
execute if score $success ca.rand matches 1.. run scoreboard players operation $crumbling_max ca.ench_var /= $100 ca.CONSTANT

execute if score $success ca.rand matches 1.. store result score $crumbling_damage ca.ench_var run data get storage cartographer_custom_enchantments:crumbling item_check.components.minecraft:damage


execute if score $success ca.rand matches 1.. unless score $crumbling_damage ca.ench_var > $crumbling_max ca.ench_var run function cartographer_custom_enchantments:enchantment/curse/crumbling/modify/zzz_create

execute if score $success ca.rand matches 1.. unless score $crumbling_damage ca.ench_var > $crumbling_max ca.ench_var if score $crumbling_slot ca.ench_var matches 0..8 run function cartographer_custom_enchantments:enchantment/curse/crumbling/modify/hotbar with storage cartographer_custom_enchantments:crumbling macro
execute if score $success ca.rand matches 1.. unless score $crumbling_damage ca.ench_var > $crumbling_max ca.ench_var if score $crumbling_slot ca.ench_var matches -106 run function cartographer_custom_enchantments:enchantment/curse/crumbling/modify/offhand
execute if score $success ca.rand matches 1.. unless score $crumbling_damage ca.ench_var > $crumbling_max ca.ench_var if score $crumbling_slot ca.ench_var matches 100..103 run function cartographer_custom_enchantments:enchantment/curse/crumbling/modify/armor