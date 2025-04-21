data modify storage cartographer:enchantment_data equipped.feet set from entity @s equipment.feet
data modify storage cartographer:enchantment_data equipped.legs set from entity @s equipment.legs
data modify storage cartographer:enchantment_data equipped.body set from entity @s equipment.chest
data modify storage cartographer:enchantment_data equipped.head set from entity @s equipment.head

data modify storage cartographer:enchantment_data equipped.offh set from entity @s equipment.offhand
data modify storage cartographer:enchantment_data equipped.main set from entity @s equipment.mainhand

execute if entity @s[type=wolf] run data modify storage cartographer:enchantment_data equipped.body_armor set from entity @s body_armor_item
execute if entity @s[type=horse] run data modify storage cartographer:enchantment_data equipped.body_armor set from entity @s body_armor_item
execute if entity @s[type=zombie_horse] run data modify storage cartographer:enchantment_data equipped.body_armor set from entity @s body_armor_item
execute if entity @s[type=skeleton_horse] run data modify storage cartographer:enchantment_data equipped.body_armor set from entity @s body_armor_item