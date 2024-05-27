function bb:lib/pldata/read

data modify storage cartographer_core:player_inventory Inventory set value []
data modify storage cartographer_core:player_inventory SelectedItem set value {}

data modify storage cartographer_core:player_inventory Inventory set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick
data modify storage cartographer_core:player_inventory SelectedItem set from entity @s SelectedItem