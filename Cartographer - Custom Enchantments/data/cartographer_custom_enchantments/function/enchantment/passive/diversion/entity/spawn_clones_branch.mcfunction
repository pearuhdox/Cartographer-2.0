data modify entity @s HandItems set from storage cartographer_custom_enchantments:diversion data.HandItems
data modify entity @s ArmorItems set from storage cartographer_custom_enchantments:diversion data.ArmorItems
data modify entity @s Tags set from storage cartographer_custom_enchantments:diversion data.Tags
data modify entity @s attributes set from storage cartographer_custom_enchantments:diversion data.attributes
data modify entity @s active_effects set from storage cartographer_custom_enchantments:diversion data.active_effects
data modify entity @s CustomName set from storage cartographer_custom_enchantments:diversion data.CustomName

data modify entity @s HandDropChances set from storage cartographer_custom_enchantments:diversion data.HandDropChances
data modify entity @s ArmorDropChances set from storage cartographer_custom_enchantments:diversion data.ArmorDropChances

data modify entity @s Health set from storage cartographer_custom_enchantments:diversion data.Health

data modify entity @s DeathLootTable set value "minecraft:entities/slime"

tag @s add ca.diversion_copy

function #minecraft:cartographer/api/handlers/reset_ench_flags

function carto_event:api/create_single_entity_event {event:"custom_ench/diversion/clone",duration:200,delay:001,parameters:{},merge_behavior:"none"}
