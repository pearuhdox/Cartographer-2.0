
#Setup all necessary scoreboard commands.
scoreboard objectives add ca.stat_var dummy

#Setup scoreboards for level tracking
scoreboard objectives add ca.ench_celerity_lvl dummy
scoreboard objectives add ca.ench_dexterity_lvl dummy
scoreboard objectives add ca.ench_finesse_lvl dummy
scoreboard objectives add ca.ench_immovable_lvl dummy
scoreboard objectives add ca.ench_vitality_lvl dummy

scoreboard objectives add ca.ench_agility_lvl dummy
scoreboard objectives add ca.ench_extended_lvl dummy
scoreboard objectives add ca.ench_traveling_lvl dummy
scoreboard objectives add ca.ench_handling_lvl dummy

scoreboard objectives add ca.ench_precision_lvl dummy
scoreboard objectives add ca.ench_amplitude_lvl dummy
scoreboard objectives add ca.ench_lucky_lvl dummy
scoreboard objectives add ca.ench_superiority_lvl dummy
scoreboard objectives add ca.ench_perfection_lvl dummy
scoreboard objectives add ca.ench_resonance_lvl dummy

scoreboard objectives add ca.ench_blast_protection_lvl dummy
scoreboard objectives add ca.ench_fire_protection_lvl dummy

scoreboard objectives add ca.ench_aqua_affinity_lvl dummy
scoreboard objectives add ca.ench_depth_strider_lvl dummy
scoreboard objectives add ca.ench_respiration_lvl dummy
scoreboard objectives add ca.ench_swift_sneak_lvl dummy
scoreboard objectives add ca.ench_soul_speed_lvl dummy

#Values for enchantments working


#Place extra shulker boxes for Custom Enchantments
#Auto Charge
#setblock 4206901 0 4206900 purple_shulker_box replace

#Repeating
#setblock 4206900 0 4206901 purple_shulker_box replace

#Infinity
#setblock 4206899 0 4206900 purple_shulker_box replace

#Two Handed
#setblock 4206900 1 4206900 purple_shulker_box replace

#Loyalty Ghost
#setblock 4206900 0 4206899 purple_shulker_box replace

#Loyalty Ghost
#setblock 4206900 2 4206900 purple_shulker_box replace

#Cartographer Glass
#setblock 4206900 6 4206900 purple_shulker_box replace

#Initialize Global Value
#execute unless score $gl_ui_loc ca.gamerule matches 0.. run scoreboard players set $gl_ui_loc ca.gamerule 0

#Summon Marker for sprint_dash
#summon marker 4206900 0 4206900 {UUID:[I;823664661,395388179,293672216,0],Tags:["ca.sprint_dash_marker"]}

#Summon Marker for other direction work
# 31182015-1791-2513-1181-151800000001
#summon marker 4206900 0 4206900 {UUID:[I;823664661,395388179,293672216,1],Tags:["ca.dir_marker"]}