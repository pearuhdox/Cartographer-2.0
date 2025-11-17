function cartographer_core:helper/get_target_status/get_percentage_health

execute if score $percentage_health_remaining ca.var matches ..50 run tag @s remove ca.diversion_half_health

execute if score $percentage_health_remaining ca.var matches ..50 run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones
