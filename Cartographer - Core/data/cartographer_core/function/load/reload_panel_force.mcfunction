########################################
# File: Cartographer Core - Load / Reload Panel
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Reruns the reload panel chat popup.
########################################

scoreboard players enable @a ca.options_trig 

function cartographer_charon:load/load_check
function cartographer_custom_attributes:load/load_check
function cartographer_custom_enchantments:load/load_check
function cartographer_custom_statuses:load/load_check
function cartographer_lexica:load/load_check
function cartographer_ender_pouch:load/load_check
#function cartographer_loot_additions:load/load_check
#function cartographer_loot_table_tweaks:load/load_check
#function cartographer_mimics:load/load_check
function cartographer_mob_utils:load/load_check
function cartographer_enchantment_rework:load/load_check
function cartographer_repair_stations:load/load_check
function cartographer_rat:load/load_check

scoreboard players set $z_detect_packs ca.installed 0

scoreboard players operation $z_detect_packs ca.installed += $charon ca.installed
scoreboard players operation $z_detect_packs ca.installed += $custom_durability ca.installed
scoreboard players operation $z_detect_packs ca.installed += $custom_enchantments ca.installed
scoreboard players operation $z_detect_packs ca.installed += $custom_statuses ca.installed
scoreboard players operation $z_detect_packs ca.installed += $loot_additions ca.installed
scoreboard players operation $z_detect_packs ca.installed += $mimics ca.installed
scoreboard players operation $z_detect_packs ca.installed += $mob_abilities ca.installed
scoreboard players operation $z_detect_packs ca.installed += $repair_stations ca.installed
scoreboard players operation $z_detect_packs ca.installed += $rat ca.installed
scoreboard players operation $z_detect_packs ca.installed += $mob_utils ca.installed

function cartographer_core:load/reload/full
