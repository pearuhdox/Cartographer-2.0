scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.crippling_head_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.crippling_head_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/head

scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.crippling_body_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.crippling_body_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/body

scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.crippling_legs_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.crippling_legs_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/legs

scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.crippling_feet_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.crippling_feet_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/feet

scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.crippling_main_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.crippling_main_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/mainhand

scoreboard players set $item_lock ca.ench_var 0
execute if entity @s[tag=ca.crippling_offh_lock] run scoreboard players set $item_lock ca.ench_var 1
execute if entity @s[tag=ca.crippling_offh_disable] run scoreboard players set $item_lock ca.ench_var 2
execute if score $item_lock ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchantment/helper/item_lock/slot/lock/offhand

execute unless entity @s[tag=ca.crippling_activated] if entity @s[type=player] run playsound minecraft:block.ender_chest.open player @s ~ ~ ~ 0.5 1.8
execute unless entity @s[tag=ca.crippling_activated] unless entity @s[type=player] run playsound minecraft:block.ender_chest.open hostile @a[distance=..16] ~ ~ ~ 1 1.8
tag @s add ca.crippling_activated