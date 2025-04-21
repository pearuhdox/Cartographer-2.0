scoreboard players set $weapon ca.calc_type 0
scoreboard players set $passive ca.calc_type 0
scoreboard players set $ranged ca.calc_type 0

$scoreboard players set $(type) ca.calc_type 1

data modify storage cartographer:enchantment_data equipped set value {}

data modify storage cartographer:enchantment_data equipped.feet set from storage cartographer:player_data main.working_data.bbl.equipment.current_tick.feet
data modify storage cartographer:enchantment_data equipped.legs set from storage cartographer:player_data main.working_data.bbl.equipment.current_tick.legs
data modify storage cartographer:enchantment_data equipped.body set from storage cartographer:player_data main.working_data.bbl.equipment.current_tick.chest
data modify storage cartographer:enchantment_data equipped.head set from storage cartographer:player_data main.working_data.bbl.equipment.current_tick.head

data modify storage cartographer:enchantment_data equipped.offh set from storage cartographer:player_data main.working_data.bbl.equipment.current_tick.offhand
data modify storage cartographer:enchantment_data equipped.main set from entity @s SelectedItem

$scoreboard players set @s ca.ench_$(enchantment)_lvl 0

$execute unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_custom_enchantments:calculator/calculate_item {enchantment:"$(enchantment)",slot:"feet"}
$execute unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_custom_enchantments:calculator/calculate_item {enchantment:"$(enchantment)",slot:"legs"}
$execute unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_custom_enchantments:calculator/calculate_item {enchantment:"$(enchantment)",slot:"body"}
$execute unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_custom_enchantments:calculator/calculate_item {enchantment:"$(enchantment)",slot:"head"}

$function cartographer_custom_enchantments:calculator/calculate_item {enchantment:"$(enchantment)",slot:"offh"}

$function cartographer_custom_enchantments:calculator/calculate_item {enchantment:"$(enchantment)",slot:"main"}