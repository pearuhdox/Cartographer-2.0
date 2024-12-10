scoreboard players operation @s ca.ripper_lvl > $ripper ca.ench_value

data modify storage gu:main out set value "-"
execute on attacker run function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ripper/macro with storage cartographer:custom_enchantments

#function carto_event:api/create_single_entity_event {event:"stuck_handler",duration:80,delay:000,parameters:{},merge_behavior:"merge"}

