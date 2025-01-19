#scoreboard players set $found_mat ca.pouch_var 0
scoreboard players set $found_ender ca.pouch_var 0
scoreboard players set $bag_count ca.pouch_var 0

#execute store success score $found_mat ca.pouch_var run data get entity @s Inventory[{id:"minecraft:bundle",tag:{MaterialsPouch:1b}}]

execute store result score $bag_count ca.pouch_var run clear @s black_bundle[minecraft:custom_data~{ender_pouch:1b}] 0
#execute if score $bag_count ca.pouch_var matches 2.. run clear @s black_bundle[minecraft:custom_data~{ender_pouch:1b}] 1

execute store result score $found_ender ca.pouch_var run data get entity @s Inventory[{id:"minecraft:black_bundle",components:{"minecraft:custom_data":{ender_pouch:1b}}}].components."minecraft:bundle_contents"

tag @s remove ca.has_ender_pouch

execute if score $found_ender ca.pouch_var matches 1.. run tag @s add ca.has_ender_pouch

advancement revoke @s only cartographer_ender_pouch:change_ender_pouch