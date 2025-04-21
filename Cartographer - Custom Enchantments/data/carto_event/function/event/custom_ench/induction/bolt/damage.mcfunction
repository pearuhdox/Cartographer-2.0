$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by $(owner)

execute anchored eyes positioned ^ ^-0.5 ^ run particle minecraft:dust_color_transition{to_color:[1.0,1.0,1.0],from_color:[0.941,1.000,0.561],scale:1.0} ~ ~ ~ 0.25 0.4 0.25 0.1 16 normal
execute anchored eyes positioned ^ ^-0.5 ^ run particle minecraft:firework ~ ~ ~ 0.25 0.4 0.25 0.1 8 normal

function cartographer_custom_statuses:apply_status/apply/set_target
execute if score $allow_statuses_target ca.ench_induction_lvl matches 1.. run function carto_event:event/custom_ench/induction/custom_statuses/status_target

execute if score $allow_statuses_self ca.ench_induction_lvl matches 1.. on attacker if entity @s[type=player] run function carto_event:event/custom_ench/induction/custom_statuses/status_self_player
execute if score $allow_statuses_self ca.ench_induction_lvl matches 1.. on attacker unless entity @s[type=player] run function carto_event:event/custom_ench/induction/custom_statuses/status_self_mob


tag @s add ca.induction_cdl
function carto_event:api/create_single_entity_event {event:"custom_ench/induction/cooldown",duration:20,delay:0,parameters:{},merge_behavior:"none"}
