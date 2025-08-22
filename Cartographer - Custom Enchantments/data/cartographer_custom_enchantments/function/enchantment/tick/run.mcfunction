#execute if score @s ca.ench_adrenaline_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/adrenaline/run
#execute if score @s ca.ench_frenzy_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/frenzy/run

#execute if score @s ca.ench_soulbound_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/soulbound/run

execute if score @s ca.ench_spurs_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/spurs/run

#execute if score @s ca.ench_ethereal_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/ethereal/run
#execute if score @s ca.ench_hardened_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/hardened/run

execute if score @s ca.ench_poise_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/poise/run
#execute if score @s ca.ench_steadfast_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/steadfast/run
#execute if score @s ca.ench_bulwark_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/bulwark/run
#execute if score @s ca.ench_sidestep_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/sidestep/run
execute if score @s ca.ench_courageous_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/courageous/run
execute if score @s ca.ench_unseen_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/unseen/run
execute if score @s ca.ench_tenacity_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/tenacity/run
execute if score @s ca.ench_inertia_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/inertia/run
#execute if score @s ca.ench_diversion_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/diversion/run
execute if score @s ca.ench_gravity_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/run
execute if score @s ca.ench_momentum_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/momentum/run
#execute if score @s ca.ench_vengeance_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/vengeance/run
execute if score @s ca.ench_surge_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/surge/run
execute if score @s ca.ench_deadeye_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/deadeye/run
execute if score @s ca.ench_trailblazer_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/trailblazer/run
execute if score @s ca.ench_starfall_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/starfall/run
execute if score @s ca.ench_orbit_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/orbit/run
execute if score @s ca.ench_storm_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/run
execute if score @s ca.ench_induction_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/run
#execute if score @s ca.ench_aberration_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/aberration/run
#execute if score @s ca.ench_quake_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/quake/run
execute if score @s ca.ench_eruption_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/eruption/run
execute if score @s ca.ench_soulfire_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/soulfire/run

#execute if score @s ca.ench_drilling_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/tool/drilling/run
execute if score @s ca.ench_excavator_lvl matches 1.. unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/tool/excavator/mob_run
execute if score @s ca.ench_multitool_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/tool/multitool/setup
execute if score @s ca.ench_lightborn_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/tool/lightborn/run

#execute if score @s ca.ench_hex_eater_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/hex_eater/run
#execute if score @s ca.ench_duelist_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/duelist/run
#execute if score @s ca.ench_hunter_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/hunter/run
#execute if score @s ca.ench_focus_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/focus/run
#execute if score @s ca.ench_first_strike_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/first_strike/run
#execute if score @s ca.ench_follow_up_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/follow_up/run
#execute if score @s ca.ench_concentration_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/concentration/run
#execute if score @s ca.ench_chaotic_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/chaotic/run
#execute if score @s ca.ench_rushdown_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/melee/rushdown/run
#execute if score @s ca.ench_leverage_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/melee/leverage/run
#execute if score @s ca.ench_overcharge_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/overcharge/run
#execute if score @s ca.ench_point_blank_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/point_blank/run
#execute if score @s ca.ench_sharpshot_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/sharpshot/run
execute if score @s ca.ench_recoil_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/run
#execute if score @s ca.ench_explosive_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/run
#execute if score @s ca.ench_pulling_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/pulling/run
#execute if score @s ca.ench_repulsion_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/schedule

execute if score @s ca.ench_cleaving_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/cleaving/run
execute if score @s ca.ench_slamming_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/slamming/run
execute if score @s ca.ench_thrusting_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/thrusting/run
execute if score @s ca.ench_quick_strike_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/run
execute if score @s ca.ench_riposte_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/run
execute if score @s ca.ench_lunging_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/run
execute if score @s ca.ench_ambushing_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/run
execute if score @s ca.ench_throwable_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/run

#execute if score @s ca.ench_collapse_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/run
#execute if score @s ca.ench_correction_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/correction/run
#execute if score @s ca.ench_ricochet_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/run
#execute if score @s ca.ench_barbed_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/barbed/run
#execute if score @s ca.ench_ripper_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ripper/run
#execute if score @s ca.ench_shrapnel_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/run
execute if score @s ca.ench_fleetfoot_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/fleetfoot/run
execute if score @s ca.ench_grappling_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/run
#execute if score @s ca.ench_barrage_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/barrage/run

execute if score @s ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/run

#execute if score @s ca.ench_crumbling_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/crumbling/run
#execute if score @s ca.ench_shattering_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/shattering/run

#execute if score @s ca.ench_haunting_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/haunting/run
execute if score @s ca.ench_corruption_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/corruption/run
execute if score @s ca.ench_crippling_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/crippling/run
execute if score @s ca.ench_pride_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/pride/run
execute if score @s ca.ench_two_handed_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/two_handed/run
#execute if score @s ca.ench_instability_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/instability/run

#execute if score @s ca.ench_melee_fragility_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/melee_fragility/run
#execute if score @s ca.ench_projectile_fragility_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/projectile_fragility/run

execute if score @s ca.ench_clumsiness_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/clumsiness/run
execute if score @s ca.ench_irreparability_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/irreparability/schedule
execute if score @s ca.ench_encumbering_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/encumbering/run
execute if score @s ca.ench_regret_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/regret/run
execute if score @s ca.ench_gluttony_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/gluttony/run

#execute if score @s ca.ench_heaviness_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/heaviness/run
#execute if score @s ca.ench_jamming_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/jamming/run

#execute if score @s ca.ench_infinity_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/consumable/run

#execute if score @s ca.ench_thorns_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/vanilla/thorns/run
#execute if score @s ca.ench_quick_charge_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/vanilla/quick_charge/run

#execute if score @s ca.ench_multishot_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/vanilla/multishot/run

#execute if score @s ca.ench_knockback_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/vanilla/knockback/run
#execute if score @s ca.ench_flame_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/vanilla/flame/run
#execute if score @s ca.ench_power_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/vanilla/power/run
#execute if score @s ca.ench_punch_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/vanilla/punch/run
