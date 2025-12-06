scoreboard players remove $time_current ca.ench_pounce_lvl 1
execute unless score $time_current ca.ench_pounce_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/pounce/recharge/activate/refill/start
execute unless score $time_current ca.ench_pounce_lvl matches 1.. run scoreboard players set $time_current ca.ench_pounce_lvl 0

execute store result storage cartographer_custom_enchantments:pounce items[0].components.minecraft:custom_data.pounce_cooldown int 1 run scoreboard players get $time_current ca.ench_pounce_lvl

#Setup Visual
data modify storage cartographer_custom_enchantments:pounce data.item set value {}
data modify storage cartographer_custom_enchantments:pounce data.item set from storage cartographer_custom_enchantments:pounce items[0]

data modify storage cartographer_custom_enchantments:pounce visual.name set value ""


execute unless data storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_data.pounce_name run data modify storage cartographer_custom_enchantments:pounce visual.macro set string storage cartographer_custom_enchantments:pounce data.item.id 10
execute unless data storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_data.pounce_name run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/pounce/recharge/activate/visual/set_name with storage cartographer_custom_enchantments:pounce visual

execute unless data storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_data.pounce_name if data storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_name run data modify storage cartographer_custom_enchantments:pounce visual.name set from storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_name
execute unless data storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_data.pounce_name if data storage cartographer_custom_enchantments:pounce data.item.components.minecraft:item_name run data modify storage cartographer_custom_enchantments:pounce visual.name set from storage cartographer_custom_enchantments:pounce data.item.components.minecraft:item_name

execute if data storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_data.pounce_name run data modify storage cartographer_custom_enchantments:pounce visual.name set from storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_data.pounce_name
execute unless data storage cartographer_custom_enchantments:pounce visual.name.italic run data modify storage cartographer_custom_enchantments:pounce visual.name.italic set value 0b

execute unless data storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_data.pounce_name run data modify storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_data.pounce_name set from storage cartographer_custom_enchantments:pounce visual.name
execute store result storage cartographer_custom_enchantments:pounce visual.time int 1 run scoreboard players get $time_current ca.ench_pounce_lvl

function cartographer_custom_enchantments:enchantment/weapon/unique/melee/pounce/recharge/activate/visual/get_name
data modify storage cartographer_custom_enchantments:pounce data.item.components.minecraft:custom_name set from storage cartographer_custom_enchantments:pounce visual.return

data modify storage cartographer_custom_enchantments:pounce items[0] set from storage cartographer_custom_enchantments:pounce data.item

execute if score $slot ca.ench_pounce_lvl matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/pounce/recharge/activate/return_offhand
execute if score $slot ca.ench_pounce_lvl matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/pounce/recharge/activate/return with storage cartographer_custom_enchantments:pounce macro