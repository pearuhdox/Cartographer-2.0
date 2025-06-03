scoreboard players remove $time_current ca.ench_riposte_lvl 1
execute unless score $time_current ca.ench_riposte_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/recharge/activate/refill/start
execute unless score $time_current ca.ench_riposte_lvl matches 1.. run scoreboard players set $time_current ca.ench_riposte_lvl 0

execute store result storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_data.riposte_cooldown int 1 run scoreboard players get $time_current ca.ench_riposte_lvl

#Setup Visual
data modify storage cartographer_custom_enchantments:riposte data.item set value {}
data modify storage cartographer_custom_enchantments:riposte data.item set from storage cartographer_custom_enchantments:riposte items[0]

data modify storage cartographer_custom_enchantments:riposte visual.name set value ""


execute unless data storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_data.riposte_name run data modify storage cartographer_custom_enchantments:riposte visual.macro set string storage cartographer_custom_enchantments:riposte items[0].id 10
execute unless data storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_data.riposte_name run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/recharge/activate/visual/set_name with storage cartographer_custom_enchantments:riposte visual

execute unless data storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_data.riposte_name if data storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_name run data modify storage cartographer_custom_enchantments:riposte visual.name set from storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_name
execute unless data storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_data.riposte_name if data storage cartographer_custom_enchantments:riposte items[0].components.minecraft:item_name run data modify storage cartographer_custom_enchantments:riposte visual.name set from storage cartographer_custom_enchantments:riposte items[0].components.minecraft:item_name

execute if data storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_data.riposte_name run data modify storage cartographer_custom_enchantments:riposte visual.name set from storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_data.riposte_name

execute unless data storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_data.riposte_name run data modify storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_data.riposte_name set from storage cartographer_custom_enchantments:riposte visual.name
execute store result storage cartographer_custom_enchantments:riposte visual.time int 1 run scoreboard players get $time_current ca.ench_riposte_lvl

function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/recharge/activate/visual/get_name
data modify storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_name set from storage cartographer_custom_enchantments:riposte visual.return

execute if score $slot ca.ench_riposte_lvl matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/recharge/activate/return_offhand
execute if score $slot ca.ench_riposte_lvl matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/recharge/activate/return with storage cartographer_custom_enchantments:riposte macro