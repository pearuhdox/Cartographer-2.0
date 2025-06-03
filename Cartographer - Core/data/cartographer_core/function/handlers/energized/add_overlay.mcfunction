data modify storage cartographer:core energized_overlay set value {}
$data modify storage cartographer:core energized_overlay set from entity @s $(equip)

execute if data storage cartographer:core energized_overlay.components.minecraft:equippable run data modify storage cartographer:core energized_overlay.components.minecraft:equippable.camera_overlay set value "particle/sonic_boom_15"
$execute unless data storage cartographer:core energized_overlay.components.minecraft:equippable run data modify storage cartographer:core energized_overlay.components.minecraft:equippable set value {slot:"$(slot)",equip_sound:"block.candle.ambient",swappable:false,damage_on_hurt:false,camera_overlay:"particle/sonic_boom_15"}

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:core energized_overlay

$loot replace entity @s $(cat).$(slot) 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]