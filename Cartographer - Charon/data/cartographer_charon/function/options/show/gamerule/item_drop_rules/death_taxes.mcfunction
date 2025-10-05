data modify storage cartographer:charon_options data set value {}

data modify storage cartographer:charon_options data.prog_option_1 set value 0
data modify storage cartographer:charon_options data.prog_option_2 set value 0
data modify storage cartographer:charon_options data.prog_option_3 set value 0
execute if score $progressive_tax charon.gmr matches 0 run data modify storage cartographer:charon_options data.prog_option_1 set value 1
execute if score $progressive_tax charon.gmr matches 1 run data modify storage cartographer:charon_options data.prog_option_2 set value 1
execute if score $progressive_tax charon.gmr matches 2 run data modify storage cartographer:charon_options data.prog_option_3 set value 1

execute store result storage cartographer:charon_options data.tax_retain_items int 1 run scoreboard players get $tax_retain_items charon.gmr
execute store result storage cartographer:charon_options data.tax_count int 1 run scoreboard players get $tax_count charon.gmr
execute store result storage cartographer:charon_options data.tax_durability int 1 run scoreboard players get $tax_durability charon.gmr
execute store result storage cartographer:charon_options data.tax_vanish int 1 run scoreboard players get $tax_vanish charon.gmr

data modify storage cartographer:charon_options data.command set value "function cartographer_charon:options/set_death_taxes {progressive_tax:$(progressive_tax),tax_retain_items:$(tax_retain_items),tax_count:$(tax_count),tax_durability:$(tax_durability),tax_vanish:$(tax_vanish)}"

function cartographer_charon:options/show/gamerule/item_drop_rules/death_taxes_macro with storage cartographer:charon_options data