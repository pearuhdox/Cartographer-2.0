data modify storage cartographer:charon_options data set value {}
execute store result storage cartographer:charon_options data.use_difficulty int 1 run scoreboard players get $use_difficulty charon.gmr
execute store result storage cartographer:charon_options data.xp_percent int 1 run scoreboard players get $xp_percent charon.gmr
execute store result storage cartographer:charon_options data.drop_coeff int 1 run scoreboard players get $drop_coeff charon.gmr
execute store result storage cartographer:charon_options data.inv_coeff int 1 run scoreboard players get $inv_coeff charon.gmr
execute store result storage cartographer:charon_options data.scale_coeff int 1 run scoreboard players get $scale_coeff charon.gmr

data modify storage cartographer:charon_options data.command set value "function cartographer_charon:options/set_drop_rates {use_difficulty:$(use_difficulty),xp_percent:$(xp_percent),drop_coeff:$(drop_coeff),inv_coeff:$(inv_coeff),scale_coeff:$(scale_coeff)}"

function cartographer_charon:options/show/gamerule/item_drop_rules/drop_rates_macro with storage cartographer:charon_options data