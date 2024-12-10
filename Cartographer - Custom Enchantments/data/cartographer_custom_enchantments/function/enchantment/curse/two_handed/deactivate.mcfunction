scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.two_handed_main_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.two_handed_main_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/unlock/mainhand

scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.two_handed_offh_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.two_handed_offh_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/unlock/offhand

execute if entity @s[tag=ca.two_handed_activated] if entity @s[type=player] run playsound minecraft:block.ender_chest.close player @s ~ ~ ~ 0.25 1.8
execute if entity @s[tag=ca.two_handed_activated] unless entity @s[type=player] run playsound minecraft:block.ender_chest.close hostile @a[distance=..16] ~ ~ ~ 0.5 1.8
tag @s remove ca.two_handed_activated