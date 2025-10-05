data modify storage cartographer:charon_options data set value {}
execute store result storage cartographer:charon_options data.initial int 1 run scoreboard players get $restore_pot_effects charon.gmr

data modify storage cartographer:charon_options data.command set value "function cartographer_charon:options/set_retain_potion_effects {output:$(output)}"

function cartographer_charon:options/show/gamerule/retain_potion_effects_macro with storage cartographer:charon_options data