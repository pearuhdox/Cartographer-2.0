tag @s remove ca.new_custom_trident

data modify entity @s Owner set from storage cartographer_custom_attributes:trident entity.Owner
data modify entity @s Motion set from storage cartographer_custom_attributes:trident entity.Motion

execute on passengers run data modify entity @s item set from storage cartographer_custom_attributes:trident item


$execute on passengers run tp @s ~ ~ ~ facing ~$(motion_x) ~$(motion_y) ~$(motion_z)
$execute on passengers on passengers run tp @s ~ ~ ~ facing ~$(motion_x) ~$(motion_y) ~$(motion_z)

execute on passengers on passengers run data modify entity @s data.Owner set from storage cartographer_custom_attributes:trident entity.Owner

function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/trident/calculate

$execute on passengers if entity @s[type=item_display] run function carto_event:api/create_single_entity_event {event:"custom_attribute/trident",duration:600,delay:000,parameters:{owner:"$(owner)",prev_x:$(prev_x),prev_y:$(prev_y),prev_z:$(prev_z)},merge_behavior:"none"}