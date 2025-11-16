
execute if score @s ca.rat_perc matches 0..9 run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#161616","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 10..19 run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#242424","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 20..29 run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#383838","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 30..39 run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#4e4e4e","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 40..49 run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#666666","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 50..59 run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#4f7c76","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 60..69 run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#5a8f83","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 70..79 run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#60a194","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 80..89 run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#74c0b3","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 90..99 run data modify storage cartographer_core:indicators text append value {"atlas":"minecraft:gui","color":"#86dacc","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}

execute if score @s ca.rat_perc matches 100 run data modify storage cartographer_core:indicators text append value {"color":"#86dacc","italic":false,"text":" "}

tag @s add ca.display_indicator