#Remove Enchant Values
scoreboard players set @s ca.ench_spurs_lvl 0

scoreboard players set @s ca.ench_inertia_lvl 0
scoreboard players set @s ca.ench_gravity_lvl 0
scoreboard players set @s ca.ench_momentum_lvl 0
scoreboard players set @s ca.ench_steadfast_lvl 0
scoreboard players set @s ca.ench_poise_lvl 0

scoreboard players set @s ca.ench_surge_lvl 0
scoreboard players set @s ca.ench_deadeye_lvl 0
scoreboard players set @s ca.ench_trailblazer_lvl 0

scoreboard players set @s ca.ench_starfall_lvl 0
scoreboard players set @s ca.ench_orbit_lvl 0
scoreboard players set @s ca.ench_storm_lvl 0
scoreboard players set @s ca.ench_induction_lvl 0
scoreboard players set @s ca.ench_eruption_lvl 0
scoreboard players set @s ca.ench_soulfire_lvl 0
scoreboard players set @s ca.ench_quake_lvl 0
scoreboard players set @s ca.ench_aberration_lvl 0

scoreboard players set @s ca.ench_starfall_hand_lvl 0
scoreboard players set @s ca.ench_orbit_hand_lvl 0
scoreboard players set @s ca.ench_storm_hand_lvl 0
scoreboard players set @s ca.ench_induction_hand_lvl 0
scoreboard players set @s ca.ench_eruption_hand_lvl 0
scoreboard players set @s ca.ench_soulfire_hand_lvl 0
scoreboard players set @s ca.ench_quake_hand_lvl 0
scoreboard players set @s ca.ench_aberration_hand_lvl 0


scoreboard players set @s ca.ench_hex_eater_lvl 0
scoreboard players set @s ca.ench_chaotic_lvl 0
scoreboard players set @s ca.ench_hunter_lvl 0
scoreboard players set @s ca.ench_duelist_lvl 0

scoreboard players set @s ca.ench_first_strike_lvl 0
scoreboard players set @s ca.ench_follow_up_lvl 0
scoreboard players set @s ca.ench_focus_lvl 0
scoreboard players set @s ca.ench_concentration_lvl 0

scoreboard players set @s ca.ench_rushdown_lvl 0
scoreboard players set @s ca.ench_leverage_lvl 0

scoreboard players set @s ca.ench_overcharge_lvl 0
scoreboard players set @s ca.ench_point_blank_lvl 0
scoreboard players set @s ca.ench_sharpshot_lvl 0

scoreboard players set @s ca.ench_drilling_lvl 0
scoreboard players set @s ca.ench_excavator_lvl 0
scoreboard players set @s ca.ench_multitool_lvl 0

scoreboard players set @s ca.ench_explosive_lvl 0
scoreboard players set @s ca.ench_pulling_lvl 0
scoreboard players set @s ca.ench_recoil_lvl 0
scoreboard players set @s ca.ench_repulsion_lvl 0

scoreboard players set @s ca.ench_quick_strike_lvl 0
scoreboard players set @s ca.ench_slamming_lvl 0
scoreboard players set @s ca.ench_cleaving_lvl 0
scoreboard players set @s ca.ench_thrusting_lvl 0
scoreboard players set @s ca.ench_throwable_lvl 0
scoreboard players set @s ca.ench_riposte_lvl 0
scoreboard players set @s ca.ench_lunging_lvl 0

scoreboard players set @s ca.ench_fleetfoot_lvl 0

scoreboard players set @s ca.ench_ricochet_lvl 0
scoreboard players set @s ca.ench_correction_lvl 0
scoreboard players set @s ca.ench_grappling_lvl 0

scoreboard players set @s ca.ench_barrage_lvl 0

scoreboard players set @s ca.ench_multishot_lvl 0
scoreboard players set @s ca.ench_quick_charge_lvl 0

scoreboard players set @s ca.ench_shrapnel_lvl 0
scoreboard players set @s ca.ench_ripper_lvl 0
scoreboard players set @s ca.ench_barbed_lvl 0

scoreboard players set @s ca.ench_collapse_lvl 0

scoreboard players set @s ca.ench_repeating_lvl 0

scoreboard players set @s ca.ench_auto_charge_slot -1000
scoreboard players set @s ca.ench_scavenger_slot -1000


scoreboard players set @s ca.ench_haunting_lvl 0


scoreboard players set @s ca.ench_corruption_lvl 0
scoreboard players set @s ca.ench_crippling_lvl 0
scoreboard players set @s ca.ench_pride_lvl 0
scoreboard players set @s ca.ench_two_handed_lvl 0

scoreboard players set @s ca.ench_instability_lvl 0

scoreboard players set @s ca.ench_clumsiness_lvl 0

scoreboard players set @s ca.ench_encumbering_lvl 0
attribute @s attack_damage modifier remove ca.encumbering_penalty

scoreboard players set @s ca.ench_regret_lvl 0
scoreboard players set @s ca.ench_gluttony_lvl 0

scoreboard players set @s ca.ench_main_regret_lvl 0
scoreboard players set @s ca.ench_offh_regret_lvl 0
scoreboard players set @s ca.ench_feet_regret_lvl 0
scoreboard players set @s ca.ench_legs_regret_lvl 0
scoreboard players set @s ca.ench_body_regret_lvl 0
scoreboard players set @s ca.ench_head_regret_lvl 0


scoreboard players set @s ca.ench_main_gluttony_lvl 0
scoreboard players set @s ca.ench_offh_gluttony_lvl 0
scoreboard players set @s ca.ench_feet_gluttony_lvl 0
scoreboard players set @s ca.ench_legs_gluttony_lvl 0
scoreboard players set @s ca.ench_body_gluttony_lvl 0
scoreboard players set @s ca.ench_head_gluttony_lvl 0

execute if score @s ca.ench_auto_charge_slot matches -1000 run scoreboard players set @s ca.auto_charge_time 0