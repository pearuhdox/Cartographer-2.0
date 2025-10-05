data modify storage cartographer_charon:effect_manager temp set value {}
data modify storage cartographer_charon:effect_manager temp set from storage cartographer_charon:effect_manager GetEffects[0]

#Reduce the Duration by Half
execute store result score $effect_dur dt.var run data get storage cartographer_charon:effect_manager temp.duration
scoreboard players operation $effect_dur dt.var *= $restore_pot_effects charon.gmr
scoreboard players operation $effect_dur dt.var /= $100 ca.CONSTANT
execute store result storage cartographer_charon:effect_manager temp.duration int 1 run scoreboard players add $effect_dur dt.var 0


#Place the item in SendEffects
data modify storage cartographer_charon:effect_manager SendEffects append from storage cartographer_charon:effect_manager temp


#Remove the item from GetEffects
data remove storage cartographer_charon:effect_manager GetEffects[0]

#Recurse if more effects
execute if data storage cartographer_charon:effect_manager GetEffects[0].Id run function cartographer_charon:effect_manager/rec