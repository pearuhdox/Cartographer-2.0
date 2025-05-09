
execute if entity @s[type=player] if predicate cartographer_core:player/sprinting unless entity @s[tag=ca.surge_inactive] unless score @s ca.sprint_time_surge matches 10.. run scoreboard players add @s ca.sprint_time_surge 1
execute if entity @s[type=player] unless predicate cartographer_core:player/sprinting if score @s ca.sprint_time_surge matches 1.. run scoreboard players remove @s ca.sprint_time_surge 1

execute unless entity @s[type=player] if entity @s[tag=ca.mob_is_sprinting] unless entity @s[tag=ca.surge_inactive] unless score @s ca.sprint_time_surge matches 15.. run scoreboard players add @s ca.sprint_time_surge 1
execute unless entity @s[type=player] unless entity @s[tag=ca.mob_is_sprinting] if score @s ca.sprint_time_surge matches 1.. run scoreboard players remove @s ca.sprint_time_surge 1

execute if score @s ca.sprint_time_surge matches 1 run tag @s remove ca.surge_inactive

execute unless entity @s[type=player] unless entity @s[tag=ca.surge_inactive] if score @s ca.sprint_time_surge matches 5 summon text_display run function cartographer_custom_enchantments:enchantment/passive/surge/create_telegraphing
execute if score @s ca.sprint_time_surge matches 5.. run function cartographer_custom_enchantments:enchantment/passive/surge/do

execute if entity @s[type=player] unless entity @s[tag=ca.surge_inactive] unless predicate cartographer_core:player/sprinting if score @s ca.sprint_time_surge matches 5.. run function cartographer_custom_enchantments:enchantment/passive/surge/release
execute unless entity @s[type=player] unless entity @s[tag=ca.surge_inactive] unless entity @s[tag=ca.mob_is_sprinting] if score @s ca.sprint_time_surge matches 5.. run function cartographer_custom_enchantments:enchantment/passive/surge/release

scoreboard players set $start_sprint ca.sprint_ench_cdl 0
execute unless entity @s[type=player] unless entity @s[tag=ca.surge_inactive] if predicate cartographer_core:periodic_tick/20 at @s unless entity @a[distance=..6] unless entity @s[tag=ca.mob_is_sprinting] unless score @s ca.sprint_ench_cdl matches 1.. on target store result score $start_sprint ca.sprint_ench_cdl run random value 1..6
execute unless entity @s[type=player] unless entity @s[tag=ca.surge_inactive] if predicate cartographer_core:periodic_tick/20 at @s unless entity @a[distance=..6] unless entity @s[tag=ca.mob_is_sprinting] if score $start_sprint ca.sprint_ench_cdl matches 1 run function carto_event:api/create_single_entity_event {event:"mob_sprinting",duration:60,delay:0,parameters:{},merge_behavior:"none"}
execute unless entity @s[type=player] unless entity @s[tag=ca.surge_inactive] if predicate cartographer_core:periodic_tick/20 at @s unless entity @a[distance=..6] unless entity @s[tag=ca.mob_is_sprinting] if score $start_sprint ca.sprint_ench_cdl matches 1 run scoreboard players set @s ca.sprint_ench_cdl 6
execute unless entity @s[type=player] unless entity @s[tag=ca.surge_inactive] if predicate cartographer_core:periodic_tick/20 unless entity @s[tag=ca.mob_is_sprinting] if score @s ca.sprint_ench_cdl matches 1.. run scoreboard players remove @s ca.sprint_ench_cdl 1
