data modify storage cartographer:enchantment_data equipped.feet set from entity @s ArmorItems[0]
data modify storage cartographer:enchantment_data equipped.legs set from entity @s ArmorItems[1]
data modify storage cartographer:enchantment_data equipped.body set from entity @s ArmorItems[2]
data modify storage cartographer:enchantment_data equipped.head set from entity @s ArmorItems[3]

data modify storage cartographer:enchantment_data equipped.offh set from entity @s HandItems[1]
data modify storage cartographer:enchantment_data equipped.main set from entity @s HandItems[0]

execute if entity @s[type=wolf] run data modify storage cartographer:enchantment_data equipped.body_armor set from entity @s body_armor_item
execute if entity @s[type=horse] run data modify storage cartographer:enchantment_data equipped.body_armor set from entity @s body_armor_item
execute if entity @s[type=zombie_horse] run data modify storage cartographer:enchantment_data equipped.body_armor set from entity @s body_armor_item
execute if entity @s[type=skeleton_horse] run data modify storage cartographer:enchantment_data equipped.body_armor set from entity @s body_armor_item