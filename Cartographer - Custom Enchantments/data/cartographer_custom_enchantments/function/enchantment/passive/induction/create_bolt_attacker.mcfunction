data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out
data modify storage cartographer:custom_enchantments previous set from storage gu:main out

scoreboard players set $is_player ca.ench_induction_lvl 0
execute if entity @s[type=player] run scoreboard players set $is_player ca.ench_induction_lvl 1
