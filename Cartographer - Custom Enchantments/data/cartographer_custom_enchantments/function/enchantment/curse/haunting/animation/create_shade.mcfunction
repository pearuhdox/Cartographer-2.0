item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air

item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
item replace entity @s armor.body with air
item replace entity @s armor.head with air

playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 0.35 1.5
particle minecraft:cloud ~ ~1 ~ 0.1 0.4 0.1 0.05 10 normal

effect give @s invisibility infinite

data modify storage cartographer:custom_enchantments item set value {}
data modify storage cartographer:custom_enchantments item set from storage cartographer_custom_enchantments:haunting_setup items.main
execute if data storage cartographer:custom_enchantments item.components.minecraft:custom_data.haunt_vanish run data modify storage cartographer:custom_enchantments item.components.minecraft:enchantments.levels.minecraft:vanishing_curse set value 1
data modify entity @s HandItems[0] set from storage cartographer:custom_enchantments item

data modify storage cartographer:custom_enchantments item set value {}
data modify storage cartographer:custom_enchantments item set from storage cartographer_custom_enchantments:haunting_setup items.offh
execute if data storage cartographer:custom_enchantments item.components.minecraft:custom_data.haunt_vanish run data modify storage cartographer:custom_enchantments item.components.minecraft:enchantments.levels.minecraft:vanishing_curse set value 1
data modify entity @s HandItems[1] set from storage cartographer:custom_enchantments item

data modify storage cartographer:custom_enchantments item set value {}
data modify storage cartographer:custom_enchantments item set from storage cartographer_custom_enchantments:haunting_setup items.feet
execute if data storage cartographer:custom_enchantments item.components.minecraft:custom_data.haunt_vanish run data modify storage cartographer:custom_enchantments item.components.minecraft:enchantments.levels.minecraft:vanishing_curse set value 1
data modify entity @s ArmorItems[0] set from storage cartographer:custom_enchantments item

data modify storage cartographer:custom_enchantments item set value {}
data modify storage cartographer:custom_enchantments item set from storage cartographer_custom_enchantments:haunting_setup items.legs
execute if data storage cartographer:custom_enchantments item.components.minecraft:custom_data.haunt_vanish run data modify storage cartographer:custom_enchantments item.components.minecraft:enchantments.levels.minecraft:vanishing_curse set value 1
data modify entity @s ArmorItems[1] set from storage cartographer:custom_enchantments item

data modify storage cartographer:custom_enchantments item set value {}
data modify storage cartographer:custom_enchantments item set from storage cartographer_custom_enchantments:haunting_setup items.body
execute if data storage cartographer:custom_enchantments item.components.minecraft:custom_data.haunt_vanish run data modify storage cartographer:custom_enchantments item.components.minecraft:enchantments.levels.minecraft:vanishing_curse set value 1
data modify entity @s ArmorItems[2] set from storage cartographer:custom_enchantments item

data modify storage cartographer:custom_enchantments item set value {}
data modify storage cartographer:custom_enchantments item set from storage cartographer_custom_enchantments:haunting_setup items.head
execute if data storage cartographer:custom_enchantments item.components.minecraft:custom_data.haunt_vanish run data modify storage cartographer:custom_enchantments item.components.minecraft:enchantments.levels.minecraft:vanishing_curse set value 1
data modify entity @s ArmorItems[3] set from storage cartographer:custom_enchantments item

tag @s add ca.no_death_items

tag @s remove ca.new_haunting_shade

function carto_event:api/create_single_entity_event {event:"custom_ench/haunting/shade",duration:12000,delay:000,parameters:{},merge_behavior:"none"}