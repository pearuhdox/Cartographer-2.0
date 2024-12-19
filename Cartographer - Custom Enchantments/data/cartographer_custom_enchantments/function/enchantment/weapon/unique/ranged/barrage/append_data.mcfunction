$data modify storage carto_event all.$(current_tick)[-1].parameters.enchants set from storage cartographer:custom_enchantments projectile.enchants
$data modify storage carto_event all.$(current_tick)[-1].parameters.attributes set from storage cartographer_custom_enchantments:barrage data.attributes
$data modify storage carto_event all.$(current_tick)[-1].parameters.weapon set from storage cartographer_custom_enchantments:barrage data.weapon
$data modify storage carto_event all.$(current_tick)[-1].parameters.item set from storage cartographer_custom_enchantments:barrage data.item
$data modify storage carto_event all.$(current_tick)[-1].parameters.Item set from storage cartographer_custom_enchantments:barrage data.Item
$data modify storage carto_event all.$(current_tick)[-1].parameters.acceleration_power set from storage cartographer_custom_enchantments:barrage data.acceleration_power
