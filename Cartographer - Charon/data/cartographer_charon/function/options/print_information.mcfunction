tellraw @s {"bold":true,"color":"#8552D6","fallback":"Charon Settings:","italic":false,"translate":""}

execute if score $death_drop charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Death Mode: ","italic":false,"translate":""},{"color":"dark_aqua","fallback":"Death Drop","italic":false,"translate":""}]
execute if score $trader charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Death Mode: ","italic":false,"translate":""},{"color":"dark_aqua","fallback":"Trader","italic":false,"translate":""}]
execute if score $collector charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Death Mode: ","italic":false,"translate":""},{"color":"dark_aqua","fallback":"Collector","italic":false,"translate":""}]
execute if score $cage charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Death Mode: ","italic":false,"translate":""},{"color":"dark_aqua","fallback":"Cage","italic":false,"translate":""}]

tellraw @s [{"bold":false,"color":"white","fallback":"----------------","italic":false,"translate":""}]

execute if score $multiplayer charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Multiplayer Shades: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $multiplayer charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Multiplayer Shades: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]

execute if score $shades_auto_revive charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Shades Auto Respawn: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $shades_auto_revive charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Shades Auto Respawn: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]

tellraw @s [{"bold":false,"color":"white","fallback":"----------------","italic":false,"translate":""}]

execute if score $void_ruleset charon.gmr matches 0 run tellraw @s [{"bold":false,"color":"white","fallback":"Void Mode: ","italic":false,"translate":""},{"color":"dark_aqua","fallback":"Execute","italic":false,"translate":""}]
execute if score $void_ruleset charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Void Mode: ","italic":false,"translate":""},{"color":"dark_aqua","fallback":"Lift","italic":false,"translate":""}]
execute if score $void_ruleset charon.gmr matches 2 run tellraw @s [{"bold":false,"color":"white","fallback":"Void Mode: ","italic":false,"translate":""},{"color":"dark_aqua","fallback":"Return","italic":false,"translate":""}]
#fixed_home
execute if score $fixed_home charon.gmr matches 0 run tellraw @s [{"bold":false,"color":"white","fallback":"Void Home Ruleset: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]
execute if score $fixed_home charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Void Home Ruleset: ","italic":false,"translate":""},{"color":"yellow","fallback":"Only Void Deaths","italic":false,"translate":""}]
execute if score $fixed_home charon.gmr matches 2 run tellraw @s [{"bold":false,"color":"white","fallback":"Void Home Ruleset: ","italic":false,"translate":""},{"color":"green","fallback":"All Deaths","italic":false,"translate":""}]

tellraw @s [{"bold":false,"color":"white","fallback":"----------------","italic":false,"translate":""}]

execute if score $drop_all_allowed charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Drop All Allowed Items: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $drop_all_allowed charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Drop All Allowed Items: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]

execute if score $always_drop_boxes charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Always Drop Shulker Boxes: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $always_drop_boxes charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Always Drop Shulker Boxes: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]
execute if score $never_drop_hotbar charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Never Drop Hotbar: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $never_drop_hotbar charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Never Drop Hotbar: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]
execute if score $never_drop_armor charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Never Drop Armor: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $never_drop_armor charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Never Drop Armor: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]
execute if score $never_drop_offhand charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Never Drop Offhand: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $never_drop_offhand charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Never Drop Offhand: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]
execute if score $never_drop_backpack charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Never Drop Backpack: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $never_drop_backpack charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Never Drop Backpack: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]

tellraw @s [{"bold":false,"color":"white","fallback":"----------------","italic":false,"translate":""}]

execute if score $use_difficulty charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Difficulty Affects Rates: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $use_difficulty charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Difficulty Affects Rates: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]
tellraw @s [{"bold":false,"color":"white","fallback":"XP Recovery Percent: ","italic":false,"translate":""},{"color":"yellow","italic":false,"score":{"name":"$xp_percent","objective":"charon.gmr"}}]
tellraw @s [{"bold":false,"color":"white","fallback":"Drop Coefficient: ","italic":false,"translate":""},{"color":"yellow","italic":false,"score":{"name":"$drop_coeff","objective":"charon.gmr"}}]
tellraw @s [{"bold":false,"color":"white","fallback":"Inventory Coefficient: ","italic":false,"translate":""},{"color":"yellow","italic":false,"score":{"name":"$inv_coeff","objective":"charon.gmr"}}]
tellraw @s [{"bold":false,"color":"white","fallback":"Scale Coefficient: ","italic":false,"translate":""},{"color":"yellow","italic":false,"score":{"name":"$scale_coeff","objective":"charon.gmr"}}]

tellraw @s [{"bold":false,"color":"white","fallback":"----------------","italic":false,"translate":""}]

execute if score $progressive_tax charon.gmr matches 0 run tellraw @s [{"bold":false,"color":"white","fallback":"Progressive Taxes: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]
execute if score $progressive_tax charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Progressive Taxes: ","italic":false,"translate":""},{"color":"green","fallback":"Normal","italic":false,"translate":""}]
execute if score $progressive_tax charon.gmr matches 2 run tellraw @s [{"bold":false,"color":"white","fallback":"Progressive Taxes: ","italic":false,"translate":""},{"color":"green","fallback":"Vanishing","italic":false,"translate":""}]
execute if score $tax_retain_items charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Tax Retain Items: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $tax_retain_items charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Tax Retain Items: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]
tellraw @s [{"bold":false,"color":"white","fallback":"Tax Count Percent: ","italic":false,"translate":""},{"color":"yellow","italic":false,"score":{"name":"$tax_count","objective":"charon.gmr"}}]
tellraw @s [{"bold":false,"color":"white","fallback":"Tax Durability Percent: ","italic":false,"translate":""},{"color":"yellow","italic":false,"score":{"name":"$tax_durability","objective":"charon.gmr"}}]
tellraw @s [{"bold":false,"color":"white","fallback":"Tax Vanish Percent: ","italic":false,"translate":""},{"color":"yellow","italic":false,"score":{"name":"$tax_vanish","objective":"charon.gmr"}}]


tellraw @s [{"bold":false,"color":"white","fallback":"----------------","italic":false,"translate":""}]

execute if score $death_compass charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Death Compass: ","italic":false,"translate":""},{"color":"green","fallback":"Enabled","italic":false,"translate":""}]
execute unless score $death_compass charon.gmr matches 1 run tellraw @s [{"bold":false,"color":"white","fallback":"Death Compass: ","italic":false,"translate":""},{"color":"red","fallback":"Disabled","italic":false,"translate":""}]

tellraw @s [{"bold":false,"color":"white","fallback":"Spawner Defenses: ","italic":false,"translate":""},{"color":"yellow","italic":false,"score":{"name":"$spawner_defenses","objective":"charon.gmr"}}]
tellraw @s [{"bold":false,"color":"white","fallback":"Retain Potion Effects: ","italic":false,"translate":""},{"color":"yellow","italic":false,"score":{"name":"$restore_pot_effects","objective":"charon.gmr"}}]

trigger ca.options_trig set -2