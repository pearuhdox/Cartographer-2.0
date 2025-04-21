#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set @s ca.ench_duelist_lvl 0
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"tool/",enchantment:"irreparability",type:"tool"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set $check ca.core_delay_check 1

execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. unless data entity @s SelectedItem.components."minecraft:custom_data".irreparability_applied run function cartographer_custom_enchantments:enchantment/curse/irreparability/apply {data:"SelectedItem",slot:"weapon.mainhand"}

#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. unless data entity @s equipment.feet.components."minecraft:custom_data".irreparability_applied run function cartographer_custom_enchantments:enchantment/curse/irreparability/apply {data:"equipment.feet",slot:"armor.feet"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. unless data entity @s equipment.legs.components."minecraft:custom_data".irreparability_applied run function cartographer_custom_enchantments:enchantment/curse/irreparability/apply {data:"equipment.legs",slot:"armor.legs"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. unless data entity @s equipment.chest.components."minecraft:custom_data".irreparability_applied run function cartographer_custom_enchantments:enchantment/curse/irreparability/apply {data:"equipment.chest",slot:"armor.chest"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. unless data entity @s equipment.head.components."minecraft:custom_data".irreparability_applied run function cartographer_custom_enchantments:enchantment/curse/irreparability/apply {data:"equipment.head",slot:"armor.head"}

#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. unless data entity @s equipment.offhand.components."minecraft:custom_data".irreparability_applied run function cartographer_custom_enchantments:enchantment/curse/irreparability/apply {data:"equipment.offhand",slot:"weapon.offhand"}

#execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set @s ca.ench_duelist_lvl 0
#execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"irreparability",type:"tool"}
#execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set $check ca.core_delay_check 1
#execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 unless data entity @s SelectedItem.components."minecraft:custom_data".irreparability_applied run function cartographer_custom_enchantments:enchantment/curse/irreparability/apply
