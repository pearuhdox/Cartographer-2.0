scoreboard players set $he_override ca.status_var 0

execute if data entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect run scoreboard players set $he_override ca.status_var 1

execute store result score $he_dur ca.status_var run data get entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect.duration
execute run scoreboard players operation $he_dur ca.status_var /= $20 ca.CONSTANT
execute store result score $he_amp ca.status_var run data get entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect.amplifier

data modify storage cartographer_custom_statuses:hidden_effect data set value {}
execute store result storage cartographer_custom_statuses:hidden_effect data.duration int 1 run scoreboard players get $he_dur ca.status_var
execute store result storage cartographer_custom_statuses:hidden_effect data.amplifier int 1 run scoreboard players get $he_amp ca.status_var
data modify storage cartographer_custom_statuses:hidden_effect data.effect set from storage carto_event current[-1].parameters.effect

function carto_event:event/custom_statuses/barricade/hidden_effect_branch with storage cartographer_custom_statuses:hidden_effect data