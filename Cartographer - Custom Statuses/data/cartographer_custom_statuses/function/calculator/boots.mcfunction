execute unless entity @s[tag=ca.suppress_inv_update] run function cartographer_core:pldata/read
execute unless entity @s[tag=ca.suppress_inv_update] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips append from storage cartographer:player_data main.working_data.bbl.equipment.current_tick.feet.components.minecraft:custom_data.apply_status
execute unless entity @s[tag=ca.suppress_inv_update] run function cartographer_core:pldata/write

#Start the process here since it runs last
execute unless entity @s[tag=ca.suppress_inv_update] run function cartographer_custom_statuses:calculator/process/coating_check