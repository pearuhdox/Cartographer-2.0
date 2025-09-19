#Run modification
scoreboard players set $vanish_flag taxes.var 0

execute if score $tax_count charon.gmr matches 1.. run function cartographer_charon:taxes/count
execute if score $tax_durability charon.gmr matches 1.. run function cartographer_charon:taxes/durability/test
execute if score $tax_vanish charon.gmr matches 1.. run function cartographer_charon:taxes/vanish

execute unless score $vanish_flag taxes.var matches 1 unless score $tax_retain_items charon.gmr matches 1 run function cartographer_charon:inv/add_to_bundle

execute unless score $tax_retain_items charon.gmr matches 1 run data modify storage cartographer_charon:player temp.id set value "minecraft:air"
execute if score $tax_retain_items charon.gmr matches 1 if score $vanish_flag taxes.var matches 1 run data modify storage cartographer_charon:player temp.id set value "minecraft:air"

scoreboard players set $vanish_flag taxes.var 0

scoreboard players operation $max_rand_interval dt.var += $scale_coeff charon.gmr 