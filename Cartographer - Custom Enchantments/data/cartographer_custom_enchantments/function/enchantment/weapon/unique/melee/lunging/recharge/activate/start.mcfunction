scoreboard players remove $time_current ca.ench_lunging_lvl 1
execute unless score $time_current ca.ench_lunging_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/activate/refill/start
execute unless score $time_current ca.ench_lunging_lvl matches 1.. run scoreboard players set $time_current ca.ench_lunging_lvl 0

execute store result storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_cooldown int 1 run scoreboard players get $time_current ca.ench_lunging_lvl

#Setup Visual
data modify storage cartographer_custom_enchantments:lunging data.item set value {}
data modify storage cartographer_custom_enchantments:lunging data.item set from storage cartographer_custom_enchantments:lunging items[0]

data modify storage cartographer_custom_enchantments:lunging visual.name set value ""


execute unless data storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_name run data modify storage cartographer_custom_enchantments:lunging visual.macro set string storage cartographer_custom_enchantments:lunging items[0].id 10
execute unless data storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_name run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/activate/visual/set_name with storage cartographer_custom_enchantments:lunging visual

execute unless data storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_name if data storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_name run data modify storage cartographer_custom_enchantments:lunging visual.name set from storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_name
execute unless data storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_name if data storage cartographer_custom_enchantments:lunging items[0].components.minecraft:item_name run data modify storage cartographer_custom_enchantments:lunging visual.name set from storage cartographer_custom_enchantments:lunging items[0].components.minecraft:item_name

execute if data storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_name run data modify storage cartographer_custom_enchantments:lunging visual.name set from storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_name

execute unless data storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_name run data modify storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_name set from storage cartographer_custom_enchantments:lunging visual.name
execute store result storage cartographer_custom_enchantments:lunging visual.time int 1 run scoreboard players get $time_current ca.ench_lunging_lvl

function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/activate/visual/get_name
data modify storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_name set from storage cartographer_custom_enchantments:lunging visual.return

execute if score $slot ca.ench_lunging_lvl matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/activate/return_offhand
execute if score $slot ca.ench_lunging_lvl matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/activate/return with storage cartographer_custom_enchantments:lunging macro