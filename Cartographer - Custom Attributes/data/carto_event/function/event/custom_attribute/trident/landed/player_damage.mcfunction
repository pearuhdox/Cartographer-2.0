execute store result storage cartographer:custom_attributes damage double 0.01 run scoreboard players get $ranged_damage ca.attr_apply_var
$data modify storage cartographer:custom_attributes owner set value "$(owner)"
function carto_event:event/custom_attribute/trident/landed/player_damage_macro with storage cartographer:custom_attributes

scoreboard players set $player_hit_check ca.custom_trident 1