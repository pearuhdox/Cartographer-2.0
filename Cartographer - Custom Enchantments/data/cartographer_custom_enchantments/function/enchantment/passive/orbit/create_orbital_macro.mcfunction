#execute if entity @s[type=player] run playsound minecraft:item.armor.equip_netherite player @a[distance=..16] ~ ~ ~ 1 0.75
#execute if entity @s[type=player] run playsound minecraft:entity.iron_golem.attack player @a[distance=..16] ~ ~ ~ 2 0.5

#execute unless entity @s[type=player] run playsound minecraft:item.armor.equip_netherite hostile @a[distance=..16] ~ ~ ~ 1 0.75
#execute unless entity @s[type=player] run playsound minecraft:entity.iron_golem.attack hostile @a[distance=..16] ~ ~ ~ 2 0.5

tag @s add ca.orbit_holder

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity

execute summon item_display run function cartographer_custom_enchantments:enchantment/passive/orbit/item_display_branch with storage cartographer:custom_enchantments

scoreboard players add @s ca.orbit_ct 1

$function carto_event:api/create_single_entity_event {event:"custom_ench/orbit/orbital",duration:6000,delay:$(delay),parameters:{owner:"$(owner)",hits:$(hits),speed:$(speed),bonus_speed:$(speed),size:$(size),damage:"$(damage)"},merge_behavior:"merge"}