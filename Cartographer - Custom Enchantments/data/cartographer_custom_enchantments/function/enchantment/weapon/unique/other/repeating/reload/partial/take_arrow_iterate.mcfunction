$clear @s $(id) 1


data remove storage cartographer_custom_enchantments:repeating data.arrow_clear[0]

data modify storage cartographer_custom_enchantments:repeating data.arrow_clear_value set value {}
data modify storage cartographer_custom_enchantments:repeating data.arrow_clear_value set from storage cartographer_custom_enchantments:repeating data.arrow_clear[0]

scoreboard players remove $arrow_partial_ct ca.ench_repeating_lvl 1

execute if score $arrow_partial_ct ca.ench_repeating_lvl matches 1.. if data storage cartographer_custom_enchantments:repeating data.arrow_clear[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/take_arrow_iterate with storage cartographer_custom_enchantments:repeating data.arrow_clear_value