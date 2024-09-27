
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

scoreboard objectives add ca.ench_diversion_hand_lvl dummy

scoreboard objectives add ca.ench_frenzy_lvl dummy
scoreboard objectives add ca.ench_adrenaline_lvl dummy
scoreboard objectives add ca.ench_vengeance_lvl dummy

scoreboard objectives add ca.ench_gravity_lvl dummy
scoreboard objectives add ca.ench_momentum_lvl dummy

scoreboard objectives add ca.ench_surge_lvl dummy
scoreboard objectives add ca.ench_deadeye_lvl dummy
scoreboard objectives add ca.ench_trailblazer_lvl dummy

scoreboard objectives add ca.ench_starfall_lvl dummy
scoreboard objectives add ca.ench_orbit_lvl dummy
scoreboard objectives add ca.ench_storm_lvl dummy
scoreboard objectives add ca.ench_induction_lvl dummy
scoreboard objectives add ca.ench_eruption_lvl dummy
scoreboard objectives add ca.ench_soulfire_lvl dummy
scoreboard objectives add ca.ench_quake_lvl dummy
scoreboard objectives add ca.ench_aberration_lvl dummy

scoreboard objectives add ca.ench_starfall_hand_lvl dummy
scoreboard objectives add ca.ench_orbit_hand_lvl dummy
scoreboard objectives add ca.ench_storm_hand_lvl dummy
scoreboard objectives add ca.ench_induction_hand_lvl dummy
scoreboard objectives add ca.ench_eruption_hand_lvl dummy
scoreboard objectives add ca.ench_soulfire_hand_lvl dummy
scoreboard objectives add ca.ench_quake_hand_lvl dummy
scoreboard objectives add ca.ench_aberration_hand_lvl dummy

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

scoreboard objectives add ca.aberration_time dummy
scoreboard objectives add ca.aberration_jump dummy
scoreboard objectives add ca.aberration_anim dummy
scoreboard objectives add ca.aberration_splits dummy

scoreboard objectives add ca.quake_time dummy
scoreboard objectives add ca.quake_size dummy
scoreboard objectives add ca.quake_max dummy

scoreboard objectives add ca.storm_stack dummy
scoreboard objectives add ca.induction_stack dummy
scoreboard objectives add ca.inertia_stack dummy
scoreboard objectives add ca.momentum_stack dummy

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
scoreboard objectives add ca.sprint_time_trailblazer dummy

scoreboard objectives add ca.sprint_dist_trailblazer minecraft.custom:minecraft.sprint_one_cm

scoreboard objectives add ca.starfall_entropy dummy
scoreboard objectives add ca.orbit_entropy dummy

scoreboard objectives add ca.starfall_tick_cap dummy
scoreboard objectives add ca.orbit_tick_cap dummy
scoreboard objectives add ca.soulfire_tick_cap dummy
scoreboard objectives add ca.eruption_tick_cap dummy
scoreboard objectives add ca.induction_tick_cap dummy
scoreboard objectives add ca.storm_tick_cap dummy

scoreboard objectives add ca.starfall_delay dummy
scoreboard objectives add ca.orbit_delay dummy
scoreboard objectives add ca.soulfire_delay dummy
scoreboard objectives add ca.eruption_delay dummy

scoreboard objectives add ca.eruption_time dummy

scoreboard objectives add ca.soulfire_time dummy
scoreboard objectives add ca.soulfire_animation dummy

scoreboard objectives add ca.orbit_bonus_speed dummy

scoreboard objectives add ca.hit_damage_buildup dummy
scoreboard objectives add ca.hit_damage_max dummy

scoreboard objectives add ca.ench_aggro_count dummy

scoreboard objectives add ca.diversion_entropy dummy

scoreboard objectives add ca.health_tag dummy
scoreboard objectives add ca.health_tag_max dummy

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