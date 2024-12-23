function bb:lib/pldata/read
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.actions set value {}
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips set value []

data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.main.components.minecraft:custom_data.apply_status
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.apply_status
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.feet.components.minecraft:custom_data.apply_status
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.legs.components.minecraft:custom_data.apply_status
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.body.components.minecraft:custom_data.apply_status
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.head.components.minecraft:custom_data.apply_status

execute if entity @s[tag=ca.status_calc_melee_hit] run function cartographer_custom_statuses:calculator/process/create_action/melee_hit


function bb:lib/pldata/write

tag @s remove ca.do_status_calc