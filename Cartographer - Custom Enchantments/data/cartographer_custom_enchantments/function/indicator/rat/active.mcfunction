execute unless predicate cartographer_core:player/cant_crit run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#f0e662","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if predicate cartographer_core:player/cant_crit run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#62e2f0","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}

execute unless score $has_weapon ca.rat_total matches 1.. if score @s ca.rat_perc matches 100.. if predicate cartographer_core:player/cant_crit run title @s subtitle {"atlas":"minecraft:gui","color":"#f06262","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}

tag @s add ca.display_indicator