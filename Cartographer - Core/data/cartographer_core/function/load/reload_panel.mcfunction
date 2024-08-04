########################################
# File: Cartographer Core - Load / Reload Panel
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Reruns the reload panel chat popup.
########################################

scoreboard players enable @a ca.options_trig 

execute unless score $gl_reload_msg ca.gamerule matches 100 as @a at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

function cartographer_charon:load/load_check
function cartographer_custom_attributes:load/load_check
function cartographer_custom_enchantments:load/load_check
function cartographer_custom_statuses:load/load_check
#function cartographer_loot_additions:load/load_check
#function cartographer_loot_table_tweaks:load/load_check
#function cartographer_mimics:load/load_check
#function cartographer_mob_abilities:load/load_check
function cartographer_enchantment_revamp:load/load_check
function cartographer_repair_stations:load/load_check

scoreboard players set $z_detect_packs ca.installed 0

scoreboard players operation $z_detect_packs ca.installed += $charon ca.installed
scoreboard players operation $z_detect_packs ca.installed += $custom_durability ca.installed
scoreboard players operation $z_detect_packs ca.installed += $custom_enchantments ca.installed
scoreboard players operation $z_detect_packs ca.installed += $custom_statuses ca.installed
scoreboard players operation $z_detect_packs ca.installed += $loot_additions ca.installed
scoreboard players operation $z_detect_packs ca.installed += $mimics ca.installed
scoreboard players operation $z_detect_packs ca.installed += $mob_abilities ca.installed
scoreboard players operation $z_detect_packs ca.installed += $repair_stations ca.installed


execute if score $gl_reload_msg ca.gamerule matches 0 as @a[scores={ca.reload_type=0}] at @s run function cartographer_core:load/reload/full
execute if score $gl_reload_msg ca.gamerule matches 1 as @a[scores={ca.reload_type=0}] at @s run function cartographer_core:load/reload/minimal
#execute if score $gl_reload_msg ca.gamerule matches 100 as @a[scores={ca.reload_type=0}] at @s run function cartographer_core:load/reload/quiet

execute as @a[scores={ca.reload_type=1}] at @s run function cartographer_core:load/reload/full
execute as @a[scores={ca.reload_type=2}] at @s run function cartographer_core:load/reload/minimal