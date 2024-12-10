
$data modify entity @s item set from entity $(entity_uuid) Item
tag @s remove ca.available

$kill $(entity_uuid)