scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.two_handed_main_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.two_handed_main_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1 if items entity @s weapon.mainhand *[minecraft:enchantments={levels:{"cartographer_custom_enchantments:curse/two_handed":1}}] run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/mainhand
execute if score $item_lock ca.ench_var matches 2 if items entity @s weapon.mainhand *[minecraft:enchantments={levels:{"cartographer_custom_enchantments:curse/two_handed":2}}] run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/mainhand


scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.two_handed_offh_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.two_handed_offh_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1 if items entity @s weapon.offhand *[minecraft:enchantments={levels:{"cartographer_custom_enchantments:curse/two_handed":1}}] run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/offhand
execute if score $item_lock ca.ench_var matches 2 if items entity @s weapon.offhand *[minecraft:enchantments={levels:{"cartographer_custom_enchantments:curse/two_handed":2}}] run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/mainhand

execute unless entity @s[tag=ca.two_handed_activated] if entity @s[type=player] run playsound minecraft:block.ender_chest.open player @s ~ ~ ~ 0.5 1.8
execute unless entity @s[tag=ca.two_handed_activated] unless entity @s[type=player] run playsound minecraft:block.ender_chest.open hostile @a[distance=..16] ~ ~ ~ 1 1.8
tag @s add ca.two_handed_activated