execute store result score $random dt.var run random value 1..100

execute if score $random dt.var <= $tax_vanish charon.gmr run scoreboard players set $vanish_flag taxes.var 1