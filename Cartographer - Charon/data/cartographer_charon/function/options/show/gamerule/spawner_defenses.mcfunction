data modify storage cartographer:charon_options data set value {}
execute store result storage cartographer:charon_options data.initial int 1 run scoreboard players get $spawner_defenses charon.gmr

data modify storage cartographer:charon_options data.command set value "function cartographer_charon:options/set_spawner_defenses {output:$(output)}"

function cartographer_charon:options/show/gamerule/spawner_defenses_macro with storage cartographer:charon_options data