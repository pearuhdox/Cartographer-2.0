execute unless entity @s[tag=ca.suppress_inv_update] run function cartographer_core:pldata/read
execute unless entity @s[tag=ca.suppress_inv_update] run data modify storage cartographer:player_data main.working_data.cartographer.custom_attribute_equips set value {}
execute unless entity @s[tag=ca.suppress_inv_update] run function cartographer_core:pldata/write