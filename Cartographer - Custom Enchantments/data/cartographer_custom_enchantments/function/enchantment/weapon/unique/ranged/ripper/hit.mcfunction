scoreboard players add @s ca.stuck_count 1

scoreboard players operation @s ca.ripper_lvl > $ripper ca.ench_value

data modify storage gu:main out set value "-"
execute on attacker run function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

tag @s add ca.ripper_tagged
function carto_event:api/create_single_entity_event {event:"stuck_handler",duration:600,delay:0,parameters:{duration:77},merge_behavior:"merge"}

