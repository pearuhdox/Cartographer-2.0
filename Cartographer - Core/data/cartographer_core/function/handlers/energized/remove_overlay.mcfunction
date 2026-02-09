#execute unless items entity @s armor.body * run function cartographer_core:handlers/body_armor_handler/add_default

data modify storage cartographer:core energized_overlay set value {}
$data modify storage cartographer:core energized_overlay set from entity @s $(equip)
data modify storage cartographer:core energized_overlay_test set value {}
data modify storage cartographer:core energized_overlay_test set from storage cartographer:core energized_overlay


data remove storage cartographer:core energized_overlay.components.minecraft:equippable.camera_overlay


data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:core energized_overlay

$loot replace entity @s $(cat).$(slot) 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]