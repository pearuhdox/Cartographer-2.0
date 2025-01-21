data modify storage cartographer:custom_enchantments custom_statuses set value {}
function cartographer_custom_enchantments:enchantment/weapon/unique/melee/slamming/custom_statuses/check_allow_status

$execute positioned ~-$(half_size) ~-0.5 ~-$(half_size) as @a[dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] at @s run tag @s add ca.slamming_hit_1
$execute as @a[distance=..$(half_size)] at @s run tag @s add ca.slamming_hit_2

execute as @a[tag=ca.slamming_hit_1,tag=ca.slamming_hit_2] at @s run function carto_event:event/custom_ench/slamming/entity/damage with storage carto_event current[-1].parameters

tag @a remove ca.slamming_hit_1
tag @a remove ca.slamming_hit_2