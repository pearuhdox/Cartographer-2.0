#execute unless items entity @s armor.body * run function cartographer_core:handlers/body_armor_handler/add_default

data modify storage cartographer:core energized_overlay set value {}
$data modify storage cartographer:core energized_overlay set from entity @s $(equip)
data modify storage cartographer:core energized_overlay_test set value {}
data modify storage cartographer:core energized_overlay_test set from storage cartographer:core energized_overlay

scoreboard players set $test_had_overlay ca.energized_stack 1
execute store result score $test_had_overlay ca.energized_stack run data modify storage cartographer:core energized_overlay_test.components.minecraft:equippable.camera_overlay set value "particle/sonic_boom_15"

scoreboard players set $test_had_equip ca.energized_stack 1
execute store result score $test_had_equip ca.energized_stack run data modify storage cartographer:core energized_overlay_test.components.minecraft:equippable.equip_sound set value "block.candle.ambient"

execute if score $test_had_overlay ca.energized_stack matches 0 if score $test_had_equip ca.energized_stack matches 0 run data remove storage cartographer:core energized_overlay.components.minecraft:equippable.camera_overlay
execute unless score $test_had_equip ca.energized_stack matches 0 run data remove storage cartographer:core energized_overlay.components.minecraft:equippable

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:core energized_overlay

$loot replace entity @s $(cat).$(slot) 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]