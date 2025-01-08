scoreboard players set $pickup ca.custom_trident 1
$execute as $(owner) if entity @s[type=!player] run scoreboard players set $pickup ca.custom_trident 0
$execute as $(owner) if entity @s[type=player,gamemode=creative] run scoreboard players set $pickup ca.custom_trident 2
execute if score $pickup_block ca.custom_trident matches 1.. run scoreboard players set $pickup ca.custom_trident 0

execute store result entity @s pickup byte 1 run scoreboard players get $pickup ca.custom_trident
data modify entity @s item set from storage cartographer_custom_attributes:trident item
data modify entity @s Owner set from storage cartographer_custom_attributes:trident owner

function cartographer_custom_enchantments:enchantment/helper/weapon/send_ench_values
execute if score $custom_enchantments ca.installed matches 1.. unless entity @e[distance=..4.5,type=#cartographer_core:affected_by_carto,nbt={HurtTime:10s}] run function carto_event:event/custom_attribute/trident/landed/collapse_test with storage cartographer_custom_attributes:trident

tag @s remove ca.custom_trident_drop

tag @s add ca.registered