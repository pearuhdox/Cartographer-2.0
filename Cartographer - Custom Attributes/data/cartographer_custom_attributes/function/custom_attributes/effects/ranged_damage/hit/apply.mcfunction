execute store result storage cartographer:custom_attributes damage double 0.01 run scoreboard players get $ranged_damage ca.attr_apply_var

execute on attacker run function gu:generate
data modify storage cartographer:custom_attributes owner set from storage gu:main out

function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/hit/macro with storage cartographer:custom_attributes