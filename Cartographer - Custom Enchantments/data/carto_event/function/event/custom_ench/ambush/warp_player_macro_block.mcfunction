

$function carto_event:api/create_single_entity_event {event:"custom_ench/ambush/moving_block",duration:8,delay:1,parameters:{x:$(x),y:$(y),z:$(z),traveler:"$(traveler)",previous_gamemode:"$(previous_gamemode)",size:3.0},merge_behavior:"merge"}
tag @s add ca.is_ambush

execute if entity @s[type=player] if score @s ca.ench_ambush_lvl matches 1.. if predicate cartographer_custom_enchantments:has/ambush/offhand_ready unless predicate cartographer_custom_enchantments:has/ambush/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambush/unapply_offhand
execute if entity @s[type=player] if score @s ca.ench_ambush_lvl matches 1.. if predicate cartographer_custom_enchantments:has/ambush/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambush/unapply