scoreboard players set $pickup ca.custom_trident 1
$execute as $(owner) if entity @s[type=!player] run scoreboard players set $pickup ca.custom_trident 0
$execute as $(owner) if entity @s[type=player,gamemode=creative] run scoreboard players set $pickup ca.custom_trident 2

execute store result entity @s pickup byte 1 run scoreboard players get $pickup ca.custom_trident
data modify entity @s item set from storage cartographer_custom_attributes:trident item
data modify entity @s Owner set from storage cartographer_custom_attributes:trident owner

tag @s remove ca.custom_trident_drop

tag @s add ca.registered