execute if entity @s[tag=ca.apply_status_melee_hit_self] run tag @s add ca.status_calc_melee_hit
execute if entity @s[tag=ca.apply_status_melee_hit_target] run tag @s add ca.status_calc_melee_hit
execute if entity @s[tag=ca.apply_status_melee_hit_self] run tag @s add ca.do_status_calc
execute if entity @s[tag=ca.apply_status_melee_hit_target] run tag @s add ca.do_status_calc

#execute if items entity @s weapon.mainhand *[minecraft:custom_data~{apply_status:{melee_hit:{}}}] run tag @s add ca.status_calc_melee_hit
#execute if items entity @s weapon.mainhand *[minecraft:custom_data~{apply_status:{melee_hit:{}}}] run tag @s add ca.do_status_calc