
data modify entity @s equipment set from storage cartographer_custom_enchantments:diversion data.equipment
data modify entity @s Tags set from storage cartographer_custom_enchantments:diversion data.Tags
data modify entity @s attributes set from storage cartographer_custom_enchantments:diversion data.attributes
data modify entity @s active_effects set from storage cartographer_custom_enchantments:diversion data.active_effects
data modify entity @s CustomName set from storage cartographer_custom_enchantments:diversion data.CustomName

data modify entity @s drop_chances set from storage cartographer_custom_enchantments:diversion data.drop_chances

data modify entity @s Health set from storage cartographer_custom_enchantments:diversion data.Health

data modify entity @s DeathLootTable set value "minecraft:entities/slime"

function cartographer_core:helper/functions/unregister_ehid

tag @s add ca.diversion_copy

function #minecraft:cartographer/api/handlers/reset_ench_flags

function carto_event:api/create_single_entity_event {event:"custom_ench/diversion/clone",duration:200,delay:1,parameters:{},merge_behavior:"none"}
