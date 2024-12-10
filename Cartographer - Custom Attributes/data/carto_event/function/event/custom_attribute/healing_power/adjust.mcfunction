execute store result score $max ca.healing_power_hp run attribute @s max_health get 100

execute if entity @s[type=player] unless score $max ca.healing_power_hp = @s ca.healing_power_hp run function carto_event:event/custom_attribute/healing_power/do_adjust
execute unless entity @s[type=player] run function carto_event:event/custom_attribute/healing_power/do_adjust