execute store result score $max ca.healing_power_hp run attribute @s generic.max_health get 100

execute unless score $max ca.healing_power_hp = @s ca.healing_power_hp run function carto_event:event/custom_attribute/healing_power/do_adjust