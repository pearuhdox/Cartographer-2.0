execute if entity @s[type=player] run function bb:lib/pldata/read
execute unless entity @s[type=player] run function cartographer_core:amd/read

execute if entity @s[type=player] run data modify storage bbl:pldata sudo_root.working_data.cartographer.custom_attributes set value {}
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_attributes set value {}

execute if entity @s[type=player] run function bb:lib/pldata/write
execute unless entity @s[type=player] run function cartographer_core:amd/write
