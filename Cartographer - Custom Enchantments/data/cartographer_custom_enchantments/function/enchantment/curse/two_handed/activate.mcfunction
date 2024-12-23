scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.two_handed_main_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.two_handed_main_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1 if predicate cartographer_custom_enchantments:has/two_handed/mainhand run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/mainhand
execute if score $item_lock ca.ench_var matches 2 if predicate cartographer_custom_enchantments:has/two_handed/mainhand run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/mainhand


scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.two_handed_offh_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.two_handed_offh_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1 if predicate cartographer_custom_enchantments:has/two_handed/offhand run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/offhand
execute if score $item_lock ca.ench_var matches 2 if predicate cartographer_custom_enchantments:has/two_handed/offhand run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/offhand

execute unless entity @s[tag=ca.two_handed_activated] if entity @s[type=player] run playsound minecraft:block.ender_chest.open player @s ~ ~ ~ 0.5 1.8
execute unless entity @s[tag=ca.two_handed_activated] unless entity @s[type=player] run playsound minecraft:block.ender_chest.open hostile @a[distance=..16] ~ ~ ~ 1 1.8
tag @s add ca.two_handed_activated