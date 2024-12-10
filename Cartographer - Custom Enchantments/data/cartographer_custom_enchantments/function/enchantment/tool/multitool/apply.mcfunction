data modify storage cartographer:custom_enchantments multitool_item set value {}
data modify storage cartographer:custom_enchantments multitool_item set from entity @s SelectedItem

execute store result score $base_speed ca.ench_multitool_lvl run data get storage cartographer:custom_enchantments multitool_item.components.minecraft:tool.speed 100

execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:netherite_sword"} run scoreboard players set $base_speed ca.ench_multitool_lvl 900
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:netherite_axe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 900
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:netherite_pickaxe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 900
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:netherite_shovel"} run scoreboard players set $base_speed ca.ench_multitool_lvl 900
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:netherite_hoe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 900

execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:diamond_sword"} run scoreboard players set $base_speed ca.ench_multitool_lvl 800
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:diamond_axe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 800
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:diamond_pickaxe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 800
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:diamond_shovel"} run scoreboard players set $base_speed ca.ench_multitool_lvl 800
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:diamond_hoe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 800

execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:golden_sword"} run scoreboard players set $base_speed ca.ench_multitool_lvl 1200
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:golden_axe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 1200
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:golden_pickaxe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 1200
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:golden_shovel"} run scoreboard players set $base_speed ca.ench_multitool_lvl 1200
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:golden_hoe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 1200

execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:iron_sword"} run scoreboard players set $base_speed ca.ench_multitool_lvl 600
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:iron_axe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 600
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:iron_pickaxe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 600
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:iron_shovel"} run scoreboard players set $base_speed ca.ench_multitool_lvl 600
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:iron_hoe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 600

execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:stone_sword"} run scoreboard players set $base_speed ca.ench_multitool_lvl 400
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:stone_axe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 400
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:stone_pickaxe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 400
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:stone_shovel"} run scoreboard players set $base_speed ca.ench_multitool_lvl 400
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:stone_hoe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 400

execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:wooden_sword"} run scoreboard players set $base_speed ca.ench_multitool_lvl 200
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:wooden_axe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 200
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:wooden_pickaxe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 200
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:wooden_shovel"} run scoreboard players set $base_speed ca.ench_multitool_lvl 200
execute if score $base_speed ca.ench_multitool_lvl matches 0 if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:wooden_hoe"} run scoreboard players set $base_speed ca.ench_multitool_lvl 200


scoreboard players set $tool_type ca.ench_multitool_lvl 0
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:netherite_sword"} run scoreboard players set $tool_type ca.ench_multitool_lvl 1
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:netherite_axe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 2
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:netherite_pickaxe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 3
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:netherite_shovel"} run scoreboard players set $tool_type ca.ench_multitool_lvl 4
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:netherite_hoe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 5

execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:diamond_sword"} run scoreboard players set $tool_type ca.ench_multitool_lvl 1
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:diamond_axe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 2
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:diamond_pickaxe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 3
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:diamond_shovel"} run scoreboard players set $tool_type ca.ench_multitool_lvl 4
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:diamond_hoe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 5

execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:golden_sword"} run scoreboard players set $tool_type ca.ench_multitool_lvl 1
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:golden_axe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 2
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:golden_pickaxe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 3
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:golden_shovel"} run scoreboard players set $tool_type ca.ench_multitool_lvl 4
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:golden_hoe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 5

execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:iron_sword"} run scoreboard players set $tool_type ca.ench_multitool_lvl 1
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:iron_axe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 2
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:iron_pickaxe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 3
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:iron_shovel"} run scoreboard players set $tool_type ca.ench_multitool_lvl 4
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:iron_hoe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 5

execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:stone_sword"} run scoreboard players set $tool_type ca.ench_multitool_lvl 1
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:stone_axe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 2
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:stone_pickaxe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 3
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:stone_shovel"} run scoreboard players set $tool_type ca.ench_multitool_lvl 4
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:stone_hoe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 5

execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:wooden_sword"} run scoreboard players set $tool_type ca.ench_multitool_lvl 1
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:wooden_axe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 2
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:wooden_pickaxe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 3
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:wooden_shovel"} run scoreboard players set $tool_type ca.ench_multitool_lvl 4
execute if data storage cartographer:custom_enchantments multitool_item{id:"minecraft:wooden_hoe"} run scoreboard players set $tool_type ca.ench_multitool_lvl 5

scoreboard players operation $reduced_speed ca.ench_multitool_lvl = $base_speed ca.ench_multitool_lvl
scoreboard players operation $reduced_speed ca.ench_multitool_lvl *= $75 ca.CONSTANT
scoreboard players operation $reduced_speed ca.ench_multitool_lvl /= $100 ca.CONSTANT

data modify storage cartographer:custom_enchantments multitool_macro set value {}

data modify storage cartographer:custom_enchantments multitool_data set value {default_mining_speed:1,damage_per_block:1,rules:[]}
data modify storage cartographer:custom_enchantments multitool_data.rules set from storage cartographer:custom_enchantments multitool_item.components.minecraft:tool.rules

execute store result storage cartographer:custom_enchantments multitool_data.default_mining_speed float 0.01 run scoreboard players get $base_speed ca.ench_multitool_lvl

execute store result storage cartographer:custom_enchantments multitool_macro.speed float 0.01 run scoreboard players get $base_speed ca.ench_multitool_lvl
execute store result storage cartographer:custom_enchantments multitool_macro.reduced_speed float 0.01 run scoreboard players get $reduced_speed ca.ench_multitool_lvl

function cartographer_custom_enchantments:enchantment/tool/multitool/apply_macro with storage cartographer:custom_enchantments multitool_macro