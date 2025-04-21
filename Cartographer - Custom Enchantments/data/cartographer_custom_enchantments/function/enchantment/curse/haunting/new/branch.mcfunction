
$execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor on passengers if entity @s[type=item_display,tag=ca.haunting_display_feet,tag=ca.available] run data modify entity @s item set from entity $(entity_uuid) Item
$execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor on passengers if entity @s[type=item_display,tag=ca.haunting_display_legs,tag=ca.available] run data modify entity @s item set from entity $(entity_uuid) Item
$execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor on passengers if entity @s[type=item_display,tag=ca.haunting_display_body,tag=ca.available] run data modify entity @s item set from entity $(entity_uuid) Item
$execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor on passengers if entity @s[type=item_display,tag=ca.haunting_display_head,tag=ca.available] run data modify entity @s item set from entity $(entity_uuid) Item

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor on passengers if entity @s[type=item_display,tag=ca.haunting_display_feet,tag=ca.available] run tag @s remove ca.available
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor on passengers if entity @s[type=item_display,tag=ca.haunting_display_legs,tag=ca.available] run tag @s remove ca.available
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor on passengers if entity @s[type=item_display,tag=ca.haunting_display_body,tag=ca.available] run tag @s remove ca.available
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor on passengers if entity @s[type=item_display,tag=ca.haunting_display_head,tag=ca.available] run tag @s remove ca.available

$execute unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor if entity @s[type=item_display,tag=ca.haunting_display_main,tag=ca.available] run data modify entity @s item set from entity $(entity_uuid) Item
execute unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor if entity @s[type=item_display,tag=ca.haunting_display_main,tag=ca.available] run tag @s remove ca.available

$kill $(entity_uuid)

scoreboard players add $haunting_ct ca.ench_haunting_lvl 1

#Still run 
#function carto_event:api/create_single_entity_event {event:"custom_ench/haunting",duration:100,delay:0,parameters:{},merge_behavior:"none"}