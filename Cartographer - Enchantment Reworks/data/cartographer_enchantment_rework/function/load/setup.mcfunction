
#Setup all necessary scoreboard commands.
scoreboard objectives add ca.stat_var dummy

#Setup scoreboards for level tracking
scoreboard objectives add ca.ench_hazard_protection_lvl dummy
scoreboard objectives add ca.ench_hazard_protection_gear_lvl dummy
scoreboard objectives add ca.ench_hazard_protection_main_lvl dummy

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