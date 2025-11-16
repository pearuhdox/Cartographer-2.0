title @s times 0 2 0

title @s title " "

execute if score @s ca.rat_perc matches 0..9 run title @s subtitle {"atlas":"minecraft:gui","color":"#161616","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 10..19 run title @s subtitle {"atlas":"minecraft:gui","color":"#242424","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 20..29 run title @s subtitle {"atlas":"minecraft:gui","color":"#383838","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 30..39 run title @s subtitle {"atlas":"minecraft:gui","color":"#4e4e4e","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 40..49 run title @s subtitle {"atlas":"minecraft:gui","color":"#666666","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 50..59 run title @s subtitle {"atlas":"minecraft:gui","color":"#4f7c76","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 60..69 run title @s subtitle {"atlas":"minecraft:gui","color":"#5a8f83","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 70..79 run title @s subtitle {"atlas":"minecraft:gui","color":"#60a194","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 80..89 run title @s subtitle {"atlas":"minecraft:gui","color":"#74c0b3","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if score @s ca.rat_perc matches 90..99 run title @s subtitle {"atlas":"minecraft:gui","color":"#86dacc","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}

execute if score @s ca.rat_perc matches 100 run title @s subtitle " "
execute if predicate cartographer_rat:looking_at_target if score @s ca.rat_perc matches 100.. unless predicate bb:cant_crit run title @s subtitle {"atlas":"minecraft:gui","color":"#f0e662","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
execute if predicate cartographer_rat:looking_at_target if score @s ca.rat_perc matches 100.. if predicate bb:cant_crit run title @s subtitle {"atlas":"minecraft:gui","color":"#62e2f0","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}


execute if predicate cartographer_rat:looking_at_target unless score $has_weapon ca.rat_total matches 1.. if score @s ca.rat_perc matches 100.. if predicate bb:cant_crit run title @s subtitle {"atlas":"minecraft:gui","color":"#f06262","italic":false,"shadow_color":197379,"sprite":"hud/crosshair_attack_indicator_full"}
