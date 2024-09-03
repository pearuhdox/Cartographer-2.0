
#Setup all necessary scoreboard commands.

#Setup scoreboards for level tracking
scoreboard objectives add ca.ench_ethereal_lvl dummy

scoreboard objectives add ca.ench_hardened_lvl dummy
scoreboard objectives add ca.ench_poise_lvl dummy
scoreboard objectives add ca.ench_steadfast_lvl dummy
scoreboard objectives add ca.ench_bulwark_lvl dummy
scoreboard objectives add ca.ench_sidestep_lvl dummy
scoreboard objectives add ca.ench_diversion_lvl dummy
scoreboard objectives add ca.ench_courageous_lvl dummy
scoreboard objectives add ca.ench_unseen_lvl dummy
scoreboard objectives add ca.ench_tenacity_lvl dummy
scoreboard objectives add ca.ench_inertia_lvl dummy

scoreboard objectives add ca.ench_frenzy_lvl dummy
scoreboard objectives add ca.ench_adrenaline_lvl dummy
scoreboard objectives add ca.ench_vengeance_lvl dummy

scoreboard objectives add ca.ench_gravity_lvl dummy
scoreboard objectives add ca.ench_momentum_lvl dummy

scoreboard objectives add ca.ench_surge_lvl dummy
scoreboard objectives add ca.ench_deadeye_lvl dummy
scoreboard objectives add ca.ench_rush_lvl dummy

#Values for enchantments working
scoreboard objectives add ca.ethereal_time dummy
scoreboard objectives add ca.bulwark_time dummy
scoreboard objectives add ca.sidestep_time dummy

scoreboard objectives add ca.hardened_type dummy
scoreboard objectives add ca.poise_active dummy
scoreboard objectives add ca.steadfast_active dummy

scoreboard objectives add ca.tenacity_stack dummy
scoreboard objectives add ca.tenacity_buffer dummy
scoreboard objectives add ca.tenacity_hp dummy
scoreboard objectives add ca.tenacity_hp_past dummy

scoreboard objectives add ca.inertia_stack dummy
scoreboard objectives add ca.inertia_x dummy
scoreboard objectives add ca.inertia_y dummy
scoreboard objectives add ca.inertia_z dummy

scoreboard objectives add ca.momentum_stack dummy
scoreboard objectives add ca.momentum_x dummy
scoreboard objectives add ca.momentum_y dummy
scoreboard objectives add ca.momentum_z dummy

scoreboard objectives add ca.frenzy_stack dummy
scoreboard objectives add ca.frenzy_duration dummy
scoreboard objectives add ca.adrenaline_stack dummy
scoreboard objectives add ca.adrenaline_duration dummy

scoreboard objectives add ca.vengeance_stack dummy
scoreboard objectives add ca.vengeance_duration dummy

scoreboard objectives add ca.gravity_var dummy
scoreboard objectives add ca.gravity_time dummy

scoreboard objectives add ca.sprint_time_surge dummy
scoreboard objectives add ca.sprint_time_deadeye dummy
scoreboard objectives add ca.sprint_time_rush dummy



scoreboard objectives add ca.ench_aggro_count dummy

scoreboard objectives add ca.diversion_entropy dummy

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