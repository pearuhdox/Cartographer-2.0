data modify storage cartographer_core:player_equip data set value {}

execute if entity @s[type=player] run data modify storage cartographer_core:player_equip data.main set from entity @s SelectedItem
execute unless entity @s[type=player] run data modify storage cartographer_core:player_equip data.main set from entity @s equipment.mainhand

data modify storage cartographer_core:player_equip data.offh set from entity @s equipment.offhand
data modify storage cartographer_core:player_equip data.feet set from entity @s equipment.feet
data modify storage cartographer_core:player_equip data.legs set from entity @s equipment.legs
data modify storage cartographer_core:player_equip data.chest set from entity @s equipment.chest
data modify storage cartographer_core:player_equip data.head set from entity @s equipment.head
data modify storage cartographer_core:player_equip data.body set from entity @s equipment.body
data modify storage cartographer_core:player_equip data.saddle set from entity @s equipment.saddle

data remove entity 31192011-4452-2112-0000-000000000000 equipment.mainhand
data remove entity 31192011-4452-2112-0000-000000000000 equipment.offhand

data modify entity 31192011-4452-2112-0000-000000000000 equipment.mainhand set from storage cartographer_core:player_equip data.main
data modify entity 31192011-4452-2112-0000-000000000000 equipment.offhand set from storage cartographer_core:player_equip data.offh

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_core:wearables run data remove storage cartographer_core:player_equip data.main
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.offhand #cartographer_core:wearables run data remove storage cartographer_core:player_equip data.offh

#Offhand Behavior
execute unless data entity 31192011-4452-2112-0000-000000000000 equipment.offhand.components.minecraft:custom_data.allow_offhand unless items entity 31192011-4452-2112-0000-000000000000 weapon.offhand #cartographer_core:offhand_allowed run data remove storage cartographer_core:player_equip data.offh
execute unless data entity 31192011-4452-2112-0000-000000000000 equipment.offhand.components.minecraft:custom_data.allow_offhand if items entity 31192011-4452-2112-0000-000000000000 weapon.offhand *[minecraft:weapon] run data remove storage cartographer_core:player_equip data.offh

execute if data entity 31192011-4452-2112-0000-000000000000 equipment.offhand.components.minecraft:custom_data.disable_mainhand run data remove storage cartographer_core:player_equip data.main
execute if data entity 31192011-4452-2112-0000-000000000000 equipment.offhand.components.minecraft:custom_data.disable_offhand run data remove storage cartographer_core:player_equip data.offh

#execute if data entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components.minecraft:equippable run data remove storage cartographer_core:player_equip data.main
#execute if data entity 31192011-4452-2112-0000-000000000000 equipment.offhand.components.minecraft:equippable run data remove storage cartographer_core:player_equip data.offh

tag @s remove ca.do_inv_fetch
