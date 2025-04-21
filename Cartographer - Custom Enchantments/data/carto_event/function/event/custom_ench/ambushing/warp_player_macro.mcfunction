
$function carto_event:api/create_single_entity_event {event:"custom_ench/ambushing/moving",duration:8,delay:1,parameters:{victim:"$(victim)",traveler:"$(traveler)",previous_gamemode:"$(previous_gamemode)",size:3.0},merge_behavior:"merge"}
tag @s add ca.is_ambushing

execute if entity @s[type=player] if score @s ca.ench_ambushing_lvl matches 1.. if predicate cartographer_custom_enchantments:has/ambushing/offhand_ready unless predicate cartographer_custom_enchantments:has/ambushing/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/unapply_offhand
execute if entity @s[type=player] if score @s ca.ench_ambushing_lvl matches 1.. if predicate cartographer_custom_enchantments:has/ambushing/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/unapply