scoreboard players set $user_id ca.ench_diversion_lvl 0

#Username based skins
#$execute as $(owner) if entity @s[name=Matoreichon] run scoreboard players set $user_id ca.ench_diversion_lvl 1
$execute as $(owner) unless score @s ca.disable_player_skins matches 1.. if entity @s[name=Sequex] run scoreboard players set $user_id ca.ench_diversion_lvl 2

#Item/Datapack/Tag based skins
$execute as $(owner) unless score @s ca.disable_other_skins matches 1.. if entity @s[tag=distract_axolotl] run scoreboard players set $user_id ca.ench_diversion_lvl 1000

function cartographer_custom_enchantments:enchantment/passive/diversion/custom_skin/directory

$function carto_event:api/create_single_entity_event {event:"custom_ench/diversion",duration:125,delay:3,parameters:{owner:"$(owner)"},merge_behavior:"merge"}

execute if block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchantment/passive/diversion/raycast_down

tag @s remove ca.new_decoy