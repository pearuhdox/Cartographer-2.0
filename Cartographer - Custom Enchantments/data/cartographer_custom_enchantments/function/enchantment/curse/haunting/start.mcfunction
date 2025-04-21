data remove entity 31192011-4452-2112-0000-000000000000 equipment.mainhand
data modify entity 31192011-4452-2112-0000-000000000000 equipment.mainhand set from entity @s Item

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_enchantments entity_uuid set from storage gu:main out

# Figure this haunt separately tag out at another time
#execute if data entity @s Item.components.minecraft:custom_data.haunt_separately run tag @s add ca.haunt_separately

execute at @s unless entity @s[tag=ca.haunt_separately] unless entity @s[tag=ca.merge_haunting] if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor if entity @e[type=item_display,distance=..5,tag=ca.haunting_display_feet,tag=ca.available] run tag @s add ca.merge_haunting
execute at @s unless entity @s[tag=ca.haunt_separately] unless entity @s[tag=ca.merge_haunting] if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor if entity @e[type=item_display,distance=..5,tag=ca.haunting_display_legs,tag=ca.available] run tag @s add ca.merge_haunting
execute at @s unless entity @s[tag=ca.haunt_separately] unless entity @s[tag=ca.merge_haunting] if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor if entity @e[type=item_display,distance=..5,tag=ca.haunting_display_body,tag=ca.available] run tag @s add ca.merge_haunting
execute at @s unless entity @s[tag=ca.haunt_separately] unless entity @s[tag=ca.merge_haunting] if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor if entity @e[type=item_display,distance=..5,tag=ca.haunting_display_head,tag=ca.available] run tag @s add ca.merge_haunting

execute at @s unless entity @s[tag=ca.haunt_separately] unless entity @s[tag=ca.merge_haunting] unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor if entity @e[type=item_display,distance=..5,tag=ca.haunting_display_main,tag=ca.available] run tag @s add ca.merge_haunting
execute at @s unless entity @s[tag=ca.haunt_separately] unless entity @s[tag=ca.merge_haunting] unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor if entity @e[type=item_display,distance=..5,tag=ca.haunting_display_offh,tag=ca.available] run tag @s add ca.merge_haunting


execute unless entity @s[tag=ca.merge_haunting] run tag @s add ca.new_haunting
#execute if entity @s[tag=ca.haunt_separately] run tag @s add ca.new_haunting
#execute if entity @s[tag=ca.haunt_separately] run tag @s remove ca.merge_haunting


execute at @s unless entity @s[tag=ca.haunt_separately] if entity @s[tag=ca.merge_haunting] if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor as @e[type=item_display,distance=..5,tag=ca.haunting_display_feet,tag=ca.available] run function cartographer_custom_enchantments:enchantment/curse/haunting/merge with storage cartographer:custom_enchantments
execute at @s unless entity @s[tag=ca.haunt_separately] if entity @s[tag=ca.merge_haunting] if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor as @e[type=item_display,distance=..5,tag=ca.haunting_display_legs,tag=ca.available] run function cartographer_custom_enchantments:enchantment/curse/haunting/merge with storage cartographer:custom_enchantments
execute at @s unless entity @s[tag=ca.haunt_separately] if entity @s[tag=ca.merge_haunting] if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor as @e[type=item_display,distance=..5,tag=ca.haunting_display_body,tag=ca.available] run function cartographer_custom_enchantments:enchantment/curse/haunting/merge with storage cartographer:custom_enchantments
execute at @s unless entity @s[tag=ca.haunt_separately] if entity @s[tag=ca.merge_haunting] if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor as @e[type=item_display,distance=..5,tag=ca.haunting_display_head,tag=ca.available] run function cartographer_custom_enchantments:enchantment/curse/haunting/merge with storage cartographer:custom_enchantments

execute at @s unless entity @s[tag=ca.haunt_separately] if entity @s[tag=ca.merge_haunting] unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor as @e[type=item_display,distance=..5,tag=ca.haunting_display_main,tag=ca.available] run function cartographer_custom_enchantments:enchantment/curse/haunting/merge with storage cartographer:custom_enchantments
execute at @s unless entity @s[tag=ca.haunt_separately] if entity @s[tag=ca.merge_haunting] unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor unless items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor as @e[type=item_display,distance=..5,tag=ca.haunting_display_offh,tag=ca.available] run function cartographer_custom_enchantments:enchantment/curse/haunting/merge with storage cartographer:custom_enchantments

execute if entity @s[tag=ca.new_haunting] positioned ~ ~ ~ run function cartographer_custom_enchantments:enchantment/curse/haunting/new/summon