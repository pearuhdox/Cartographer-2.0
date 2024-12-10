execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:slot_changed

#scoreboard players set @s ca.load_crossbow_time 0
#scoreboard players set @s ca.draw_bow_time 0
#scoreboard players set @s ca.hold_shield_time 0
#scoreboard players set @s ca.use_eye_time 0
#scoreboard players set @s ca.aim_trident_time 0

#execute if score $custom_attributes ca.installed matches 1.. run function cartographer_custom_attributes:calculator/process/start
