data modify storage cartographer:rat_options data set value {}
execute store result storage cartographer:rat_options data.initial int 1 run scoreboard players get $base_invul_frames ca.gamerule

data modify storage cartographer:rat_options data.command set value "function cartographer_rat:options/set_base_invul_frames {output:$(output)}"

function cartographer_rat:options/show/gamerule/base_invul_frames_macro with storage cartographer:rat_options data