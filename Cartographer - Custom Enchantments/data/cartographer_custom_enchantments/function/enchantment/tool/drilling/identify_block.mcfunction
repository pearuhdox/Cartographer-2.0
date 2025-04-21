setblock 4206900 65 4206900 air replace
$setblock 4206900 65 4206900 $(block) replace

$particle minecraft:block{block_state:{Name:"minecraft:$(block)"}} ~ ~ ~ 0.3 0.3 0.3 2 60 normal

execute store result score $has_silk_touch ca.ench_drilling_lvl run data get entity @s SelectedItem.components."minecraft:enchantments".minecraft:silk_touch

execute if block 4206900 65 4206900 spawner run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:29}

execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 minecraft:nether_gold_ore run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:1}
execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 #minecraft:coal_ores run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:1}
execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 #minecraft:diamond_ores run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:5}
execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 #minecraft:emerald_ores run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:5}
execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 #minecraft:lapis_ores run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:3}
execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 minecraft:nether_quartz_ore run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:3}
execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 #minecraft:redstone_ores run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:3}

execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 minecraft:sculk run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:1}
execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 minecraft:sculk_sensor run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:5}
execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 minecraft:sculk_shrieker run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:5}
execute unless score $has_silk_touch ca.ench_drilling_lvl matches 1.. if block 4206900 65 4206900 minecraft:sculk_catalyst run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:5}
