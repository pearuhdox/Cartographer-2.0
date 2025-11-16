#Objectives for Custom Attributes
scoreboard objectives add ca.attr_invul_frames_value_main dummy
scoreboard objectives add ca.attr_invul_frames_value_offh dummy
scoreboard objectives add ca.attr_invul_frames_value_head dummy
scoreboard objectives add ca.attr_invul_frames_value_chest dummy
scoreboard objectives add ca.attr_invul_frames_value_legs dummy
scoreboard objectives add ca.attr_invul_frames_value_feet dummy
scoreboard objectives add ca.attr_invul_frames_value_saddle dummy
scoreboard objectives add ca.attr_invul_frames_value_body dummy
scoreboard objectives add ca.attr_invul_frames_value_bonus dummy

scoreboard objectives add ca.attr_invul_frames_percent_main dummy
scoreboard objectives add ca.attr_invul_frames_percent_offh dummy
scoreboard objectives add ca.attr_invul_frames_percent_head dummy
scoreboard objectives add ca.attr_invul_frames_percent_chest dummy
scoreboard objectives add ca.attr_invul_frames_percent_legs dummy
scoreboard objectives add ca.attr_invul_frames_percent_feet dummy
scoreboard objectives add ca.attr_invul_frames_percent_saddle dummy
scoreboard objectives add ca.attr_invul_frames_percent_body dummy
scoreboard objectives add ca.attr_invul_frames_percent_bonus dummy

scoreboard objectives add ca.attr_invul_frames_value dummy
scoreboard objectives add ca.attr_invul_frames_percent dummy
scoreboard objectives add ca.attr_invul_frames_total dummy

scoreboard objectives add ca.attr_invul_shred_value_main dummy
scoreboard objectives add ca.attr_invul_shred_value_offh dummy
scoreboard objectives add ca.attr_invul_shred_value_head dummy
scoreboard objectives add ca.attr_invul_shred_value_chest dummy
scoreboard objectives add ca.attr_invul_shred_value_legs dummy
scoreboard objectives add ca.attr_invul_shred_value_feet dummy
scoreboard objectives add ca.attr_invul_shred_value_saddle dummy
scoreboard objectives add ca.attr_invul_shred_value_body dummy
scoreboard objectives add ca.attr_invul_shred_value_bonus dummy

scoreboard objectives add ca.attr_invul_shred_percent_main dummy
scoreboard objectives add ca.attr_invul_shred_percent_offh dummy
scoreboard objectives add ca.attr_invul_shred_percent_head dummy
scoreboard objectives add ca.attr_invul_shred_percent_chest dummy
scoreboard objectives add ca.attr_invul_shred_percent_legs dummy
scoreboard objectives add ca.attr_invul_shred_percent_feet dummy
scoreboard objectives add ca.attr_invul_shred_percent_saddle dummy
scoreboard objectives add ca.attr_invul_shred_percent_body dummy
scoreboard objectives add ca.attr_invul_shred_percent_bonus dummy

scoreboard objectives add ca.attr_invul_shred_value dummy
scoreboard objectives add ca.attr_invul_shred_percent dummy
scoreboard objectives add ca.attr_invul_shred_total dummy

#Objectives for mechanics
scoreboard objectives add ca.invul_frames dummy
scoreboard objectives add ca.kbr_frames dummy

scoreboard objectives add ca.i_frame_tick_timer dummy

scoreboard objectives add ca.block_attack_indicator_time dummy

scoreboard objectives add ca.rat_dmg_taken minecraft.custom:damage_taken dummy
scoreboard objectives add ca.rat_dmg_resist minecraft.custom:damage_resisted dummy
scoreboard objectives add ca.rat_dmg_absorbed minecraft.custom:damage_absorbed dummy

scoreboard objectives add ca.rat_time dummy
scoreboard objectives add ca.rat_reach dummy

scoreboard objectives add ca.rat_perc dummy
scoreboard objectives add ca.rat_total dummy

scoreboard objectives add ca.rat_dmg_dealt minecraft.custom:damage_dealt dummy

execute unless score $base_invul_frames ca.gamerule matches 0.. run scoreboard players set $base_invul_frames ca.gamerule 10