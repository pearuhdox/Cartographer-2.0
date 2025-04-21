data modify storage cartographer_custom_enchantments:quick_strike items set value []
data modify storage cartographer_custom_enchantments:quick_strike player_inv set value []
data modify storage cartographer_custom_enchantments:quick_strike player_inv set from entity @s Inventory

data modify storage cartographer_custom_enchantments:quick_strike player_equip set from entity @s equipment
data modify storage cartographer_custom_enchantments:quick_strike player_equip.offhand.Slot set value -106b
data modify storage cartographer_custom_enchantments:quick_strike player_equip.feet.Slot set value 100b
data modify storage cartographer_custom_enchantments:quick_strike player_equip.legs.Slot set value 101b
data modify storage cartographer_custom_enchantments:quick_strike player_equip.chest.Slot set value 102b
data modify storage cartographer_custom_enchantments:quick_strike player_equip.head.Slot set value 103b

data modify storage cartographer_custom_enchantments:quick_strike player_inv append from storage cartographer_custom_enchantments:quick_strike player_equip.offhand
data modify storage cartographer_custom_enchantments:quick_strike player_inv append from storage cartographer_custom_enchantments:quick_strike player_equip.feet
data modify storage cartographer_custom_enchantments:quick_strike player_inv append from storage cartographer_custom_enchantments:quick_strike player_equip.legs
data modify storage cartographer_custom_enchantments:quick_strike player_inv append from storage cartographer_custom_enchantments:quick_strike player_equip.chest
data modify storage cartographer_custom_enchantments:quick_strike player_inv append from storage cartographer_custom_enchantments:quick_strike player_equip.head

data modify storage cartographer_custom_enchantments:quick_strike items append from storage cartographer_custom_enchantments:quick_strike player_inv[{components:{"minecraft:custom_data":{has_been_used:1b,quick_strike_state:1b},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/melee/quick_strike":1}}}]
data modify storage cartographer_custom_enchantments:quick_strike items append from storage cartographer_custom_enchantments:quick_strike player_inv[{components:{"minecraft:custom_data":{has_been_used:1b,quick_strike_state:1b},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/melee/quick_strike":2}}}]
data modify storage cartographer_custom_enchantments:quick_strike items append from storage cartographer_custom_enchantments:quick_strike player_inv[{components:{"minecraft:custom_data":{has_been_used:1b,quick_strike_state:1b},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/melee/quick_strike":3}}}]
data modify storage cartographer_custom_enchantments:quick_strike items append from storage cartographer_custom_enchantments:quick_strike player_inv[{components:{"minecraft:custom_data":{has_been_used:1b,quick_strike_state:1b},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/melee/quick_strike":4}}}]
data modify storage cartographer_custom_enchantments:quick_strike items append from storage cartographer_custom_enchantments:quick_strike player_inv[{components:{"minecraft:custom_data":{has_been_used:1b,quick_strike_state:1b},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/melee/quick_strike":5}}}]
data modify storage cartographer_custom_enchantments:quick_strike items append from storage cartographer_custom_enchantments:quick_strike player_inv[{components:{"minecraft:custom_data":{has_been_used:1b,quick_strike_state:1b},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/melee/quick_strike":6}}}]
data modify storage cartographer_custom_enchantments:quick_strike items append from storage cartographer_custom_enchantments:quick_strike player_inv[{components:{"minecraft:custom_data":{has_been_used:1b,quick_strike_state:1b},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/melee/quick_strike":7}}}]
data modify storage cartographer_custom_enchantments:quick_strike items append from storage cartographer_custom_enchantments:quick_strike player_inv[{components:{"minecraft:custom_data":{has_been_used:1b,quick_strike_state:1b},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/melee/quick_strike":8}}}]
data modify storage cartographer_custom_enchantments:quick_strike items append from storage cartographer_custom_enchantments:quick_strike player_inv[{components:{"minecraft:custom_data":{has_been_used:1b,quick_strike_state:1b},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/melee/quick_strike":9}}}]
data modify storage cartographer_custom_enchantments:quick_strike items append from storage cartographer_custom_enchantments:quick_strike player_inv[{components:{"minecraft:custom_data":{has_been_used:1b,quick_strike_state:1b},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/melee/quick_strike":10}}}]

execute if data storage cartographer_custom_enchantments:quick_strike items[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/recharge/iterate