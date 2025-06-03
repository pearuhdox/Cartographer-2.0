scoreboard players remove $time_current ca.ench_quick_strike_lvl 1
execute unless score $time_current ca.ench_quick_strike_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/recharge/activate/refill/start

execute unless score $time_current ca.ench_quick_strike_lvl matches 1.. run scoreboard players set $time_current ca.ench_quick_strike_lvl 0

execute store result storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_cooldown int 1 run scoreboard players get $time_current ca.ench_quick_strike_lvl

#Setup Visual
data modify storage cartographer_custom_enchantments:quick_strike data.item set value {}
data modify storage cartographer_custom_enchantments:quick_strike data.item set from storage cartographer_custom_enchantments:quick_strike items[0]

data modify storage cartographer_custom_enchantments:quick_strike visual.name set value ""

execute unless data storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_name run data modify storage cartographer_custom_enchantments:quick_strike visual.macro set string storage cartographer_custom_enchantments:quick_strike items[0].id 10
execute unless data storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_name run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/recharge/activate/visual/set_name with storage cartographer_custom_enchantments:quick_strike visual

execute unless data storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_name if data storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_name run data modify storage cartographer_custom_enchantments:quick_strike visual.name set from storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_name
execute unless data storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_name if data storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:item_name run data modify storage cartographer_custom_enchantments:quick_strike visual.name set from storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:item_name

execute if data storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_name run data modify storage cartographer_custom_enchantments:quick_strike visual.name set from storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_name

execute unless data storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_name run data modify storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_name set from storage cartographer_custom_enchantments:quick_strike visual.name
execute store result storage cartographer_custom_enchantments:quick_strike visual.time int 1 run scoreboard players get $time_current ca.ench_quick_strike_lvl

function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/recharge/activate/visual/get_name
data modify storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_name set from storage cartographer_custom_enchantments:quick_strike visual.return

execute if score $time_current ca.ench_quick_strike_lvl matches 1 run function carto_event:api/create_single_entity_event {event:"custom_ench/quick_strike/cooldown",duration:20,delay:0,parameters:{},merge_behavior:"none"}

execute if score $slot ca.ench_quick_strike_lvl matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/recharge/activate/return_offhand
execute if score $slot ca.ench_quick_strike_lvl matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/recharge/activate/return with storage cartographer_custom_enchantments:quick_strike macro