setblock 4206900 65 4206900 air replace
$setblock 4206900 65 4206900 $(block) replace

scoreboard players set $allow_excavator ca.ench_excavator_lvl 0
execute if block 4206900 65 4206900 #cartographer_custom_enchantments:sensitive_to_excavator run scoreboard players set $allow_excavator ca.ench_excavator_lvl 1