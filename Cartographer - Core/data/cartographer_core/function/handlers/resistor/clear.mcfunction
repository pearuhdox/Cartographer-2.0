tag @s remove ca.resistor_active

scoreboard players set $amplifier ca.resistor_var -1
scoreboard players set $duration ca.resistor_var -1
execute if data entity @s active_effects[{id:"minecraft:resistance"}] store result score $amplifier ca.resistor_var run data get entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect.amplifier
execute if data entity @s active_effects[{id:"minecraft:resistance"}] store result score $duration ca.resistor_var run data get entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect.duration
execute if score $duration ca.resistor_var matches 1.. run scoreboard players operation $duration ca.resistor_var /= $20 ca.CONSTANT

execute store result storage cartographer:core resistor.effect.duration int 1 run scoreboard players get $duration ca.resistor_var
execute store result storage cartographer:core resistor.effect.amplifier int 1 run scoreboard players get $amplifier ca.resistor_var

effect clear @s resistance
execute if score $amplifer ca.resistor_var matches 0.. run function cartographer_core:handlers/resistor/clear_macro with storage cartographer:core resistor.effect

scoreboard players set @s ca.resistor_damage_amt 0
scoreboard players set @s ca.resistor_fall_damage 0