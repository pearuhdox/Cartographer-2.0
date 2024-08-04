execute unless entity @s[tag=ca.ench_ran_flag_hardened_melee] run function cartographer_custom_enchantments:enchantment/passive/hardened/damage_type/melee

execute unless entity @s[tag=ca.ench_ran_flag_hardened_melee] run function carto_event:api/create_single_entity_event {event:"schedule_enchant/reset",duration:1,delay:000,parameters:{flag:"hardened_melee"},merge_behavior:"none"}
execute unless entity @s[tag=ca.ench_ran_flag_hardened_melee] run tag @s add ca.ench_ran_flag_hardened_melee