scoreboard players set $current_dur taxes.var 0
execute store result score $current_dur taxes.var run data get storage cartographer_charon:player temp.components.minecraft:damage

scoreboard players operation $dmg_to_deal taxes.var = $max_dur taxes.var
scoreboard players operation $dmg_to_deal taxes.var -= $current_dur taxes.var

scoreboard players operation $inverse_dur_tax taxes.var = $100 ca.CONSTANT
scoreboard players operation $inverse_dur_tax taxes.var -= $tax_durability charon.gmr

# Get X% of the item where X is the tax_durability rule
scoreboard players operation $dmg_to_deal taxes.var *= $tax_durability charon.gmr
scoreboard players operation $dmg_to_deal taxes.var /= $100 ca.CONSTANT

#scoreboard players operation $dmg_to_deal taxes.var += $current_dur taxes.var

execute store result storage cartographer_charon:player temp.components.minecraft:damage int 1 run scoreboard players operation $dmg_to_deal taxes.var += $current_dur taxes.var