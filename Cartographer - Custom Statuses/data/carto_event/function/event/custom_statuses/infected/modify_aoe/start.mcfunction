execute unless score @s ca.attr_aoe_size_total matches -2000000 run function carto_event:event/custom_statuses/infected/modify_aoe/size

execute unless score @s ca.attr_aoe_damage_total matches -2000000 run function carto_event:event/custom_statuses/infected/modify_aoe/damage

execute unless score @s ca.attr_status_inflict_damage_total matches -2000000 run function carto_event:event/custom_statuses/infected/modify_damage