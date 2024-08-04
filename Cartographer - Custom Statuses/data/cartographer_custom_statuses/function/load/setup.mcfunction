#Enchantment Scoreboards

#Enchantment Scoreboard Levels
scoreboard objectives add ca.ench_evasion_lvl dummy
scoreboard objectives add ca.ench_nullifying_lvl dummy
scoreboard objectives add ca.ench_regeneration_lvl dummy
scoreboard objectives add ca.ench_shielding_lvl dummy

scoreboard objectives add ca.ench_mightiness_lvl dummy
scoreboard objectives add ca.ench_swiftness_lvl dummy
scoreboard objectives add ca.ench_hastiness_lvl dummy
scoreboard objectives add ca.ench_stealthiness_lvl dummy

scoreboard objectives add ca.ench_sapper_lvl dummy
scoreboard objectives add ca.ench_lifeblood_lvl dummy
scoreboard objectives add ca.ench_bracing_lvl dummy

#Enchantment scoreboards functionality
scoreboard objectives add ca.shielding_time dummy

#Setup all necessary scoreboard commands.
scoreboard objectives add ca.wither_tick dummy
scoreboard objectives add ca.wither_buffer dummy

scoreboard objectives add ca.bleed_amt dummy
scoreboard objectives add ca.bleed_buffer dummy

scoreboard objectives add ca.shock_tick dummy
scoreboard objectives add ca.shock_raycast dummy
scoreboard objectives add ca.shock_buffer dummy

scoreboard objectives add ca.infect_tick dummy
scoreboard objectives add ca.infect_raycast dummy
scoreboard objectives add ca.infect_tick_rate dummy
scoreboard objectives add ca.infect_targets dummy
scoreboard objectives add ca.infect_damage dummy
scoreboard objectives add ca.infect_range dummy
scoreboard objectives add ca.infect_death_dmg dummy
scoreboard objectives add ca.infect_duration dummy
scoreboard objectives add ca.infect_buffer dummy

scoreboard objectives add ca.confused_reassign dummy
scoreboard objectives add ca.confused_buffer dummy

scoreboard objectives add ca.morphed_persistance dummy
scoreboard objectives add ca.morphed_ai dummy
scoreboard objectives add ca.morphed_health dummy

scoreboard objectives add ca.siphon_speed_player dummy
scoreboard objectives add ca.siphon_strength_player dummy
scoreboard objectives add ca.siphon_timer dummy
scoreboard objectives add ca.siphon_player_test dummy
scoreboard objectives add ca.siphon_heal dummy
scoreboard objectives add ca.siphon_heal_buffer dummy

scoreboard objectives add ca.evocation_buffer dummy

scoreboard objectives add ca.exposed_hp dummy
scoreboard objectives add ca.exposed_hp_past dummy
scoreboard objectives add ca.exposed_buffer dummy

scoreboard objectives add ca.brittle_hp dummy
scoreboard objectives add ca.brittle_hp_past dummy
scoreboard objectives add ca.brittle_buildup dummy
scoreboard objectives add ca.brittle_buffer dummy

scoreboard objectives add ca.shackled_cdl dummy
scoreboard objectives add ca.shackled_hp dummy
scoreboard objectives add ca.shackled_hp_past dummy
scoreboard objectives add ca.shackled_buffer dummy
scoreboard objectives add ca.shackled_buffer_tenths dummy

scoreboard objectives add ca.shackled_spread dummy
scoreboard objectives add ca.shackled_targets dummy
scoreboard objectives add ca.shackled_range dummy
scoreboard objectives add ca.shackled_percentage dummy

scoreboard objectives add ca.execute_hp dummy
scoreboard objectives add ca.execute_hp_past dummy

scoreboard objectives add ca.windblast_hp dummy
scoreboard objectives add ca.windblast_hp_past dummy
scoreboard objectives add ca.windblast_cdl dummy
scoreboard objectives add ca.windblast_raycast dummy
scoreboard objectives add ca.windblast_buffer dummy

scoreboard objectives add ca.frozen_ai dummy
scoreboard objectives add ca.frozen_fuse dummy
scoreboard objectives add ca.frozen_hp dummy
scoreboard objectives add ca.frozen_hp_past dummy
scoreboard objectives add ca.frozen_buildup dummy

scoreboard objectives add ca.oiled_warmup dummy
scoreboard objectives add ca.oiled_duration dummy
scoreboard objectives add ca.oiled_cauterize dummy

scoreboard objectives add ca.oiled_buffer dummy

scoreboard objectives add ca.slippery_val dummy
scoreboard objectives add ca.slippery_cooldown dummy

scoreboard objectives add ca.slippery_crash_buffer dummy

scoreboard objectives add ca.harvest_var dummy

scoreboard objectives add ca.stealth_silent dummy
scoreboard objectives add ca.stealth_powered dummy
scoreboard objectives add ca.stealth_keep_armor dummy
scoreboard objectives add ca.stealth_keep_weapons dummy

scoreboard objectives add ca.stealth_value dummy

scoreboard objectives add ca.barricade_shields dummy

scoreboard objectives add ca.evasion_amount dummy
scoreboard objectives add ca.evasion_chance dummy
scoreboard objectives add ca.evasion_entropy dummy

scoreboard objectives add ca.nullify_cooldown dummy

scoreboard objectives add ca.absorption_tick dummy
scoreboard objectives add ca.absorption_buffer dummy

scoreboard objectives add ca.regeneration_tick dummy
scoreboard objectives add ca.regeneration_buffer dummy

scoreboard objectives add ca.asleep_time dummy
scoreboard objectives add ca.asleep_var dummy
scoreboard objectives add ca.asleep_hp dummy
scoreboard objectives add ca.asleep_hp_past dummy

scoreboard objectives add ca.asleep_buffer dummy

scoreboard objectives add ca.stunned_var dummy
scoreboard objectives add ca.stunned_time dummy
scoreboard objectives add ca.stunned_direction dummy
scoreboard objectives add ca.dazed_time dummy
scoreboard objectives add ca.dazed_value dummy
scoreboard objectives add ca.dazed_max dummy

scoreboard objectives add ca.status_var dummy
scoreboard objectives add ca.stat_calc_var dummy
scoreboard objectives add ca.merge_var dummy

scoreboard objectives add ca.player_entropy dummy

scoreboard objectives add ca.cs_shoot_bow minecraft.used:minecraft.bow
scoreboard objectives add ca.cs_shoot_cross minecraft.used:minecraft.crossbow
scoreboard objectives add ca.cs_throw_trident minecraft.used:minecraft.trident
scoreboard objectives add ca.cs_throw_snowball minecraft.used:minecraft.snowball

scoreboard objectives add ca.cu_st_dmg minecraft.custom:minecraft.damage_dealt

scoreboard objectives add ca.write_status dummy

scoreboard objectives add ca.linger_cdl dummy

scoreboard objectives add ca.apply_status_check dummy
scoreboard objectives add ca.apply_status_data dummy
scoreboard objectives add ca.apply_status_conditions dummy

scoreboard objectives add ca.lc_var dummy

#Setup Description Space
function cartographer_custom_statuses:inspector/storage_setup

#Setup LoE data space
function cartographer_custom_statuses:load/integration/active/clear

#Sunlight block for Morphed
setblock 4206910 310 4206910 bedrock replace

#Start initial required looping to trigger enchant effects.

#Make sure the stealth equip table is empty
data modify storage cartographer_custom_statuses:stealth equip_data set value {}