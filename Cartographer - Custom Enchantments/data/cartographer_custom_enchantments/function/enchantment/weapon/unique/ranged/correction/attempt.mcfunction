scoreboard players set $attempts ca.ench_correction_lvl 3
scoreboard players set $hit ca.ench_correction_lvl 0

function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/correction/redirect_start

tag @e[distance=..16] remove ca.corrected_check