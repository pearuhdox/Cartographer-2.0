########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Sets up all needed infrastructure for Core. Run on reload.
########################################

function cartographer_core:helper/heal_player/load

scoreboard objectives add ca.carto_event dummy

scoreboard objectives add ca.player_id dummy

scoreboard objectives add ca.systems dummy
scoreboard objectives add ca.installed dummy

scoreboard objectives add ca.registry dummy
scoreboard objectives add ca.notice_time dummy


scoreboard objectives add ca.rand_var dummy

scoreboard players set $charon ca.installed 0
scoreboard players set $custom_durability ca.installed 0
scoreboard players set $custom_enchantments ca.installed 0
scoreboard players set $custom_statuses ca.installed 0
scoreboard players set $loot_additions ca.installed 0
scoreboard players set $loot_table_tweaks ca.installed 0
scoreboard players set $mimics ca.installed 0
scoreboard players set $mob_abilities ca.installed 0
scoreboard players set $pot_injector ca.installed 0
scoreboard players set $repair_stations ca.installed 0


#Create UUID Handshake score for Interactions
scoreboard objectives add ca.uuid_interact dummy

scoreboard objectives add ca.yaw dummy
scoreboard objectives add ca.yaw_past dummy

scoreboard objectives add ca.pitch dummy
scoreboard objectives add ca.pitch_past dummy

scoreboard objectives add ca.x_pos dummy
scoreboard objectives add ca.y_pos dummy
scoreboard objectives add ca.z_pos dummy

scoreboard objectives add ca.x_pos_past dummy
scoreboard objectives add ca.y_pos_past dummy
scoreboard objectives add ca.z_pos_past dummy

scoreboard objectives add ca.drop_box minecraft.dropped:minecraft.shulker_box

scoreboard objectives add ca.drop_box_white minecraft.dropped:minecraft.white_shulker_box
scoreboard objectives add ca.drop_box_orange minecraft.dropped:minecraft.orange_shulker_box
scoreboard objectives add ca.drop_box_magenta minecraft.dropped:minecraft.magenta_shulker_box
scoreboard objectives add ca.drop_box_light_blue minecraft.dropped:minecraft.light_blue_shulker_box
scoreboard objectives add ca.drop_box_yellow minecraft.dropped:minecraft.yellow_shulker_box
scoreboard objectives add ca.drop_box_lime minecraft.dropped:minecraft.lime_shulker_box
scoreboard objectives add ca.drop_box_pink minecraft.dropped:minecraft.pink_shulker_box
scoreboard objectives add ca.drop_box_gray minecraft.dropped:minecraft.gray_shulker_box
scoreboard objectives add ca.drop_box_light_gray minecraft.dropped:minecraft.light_gray_shulker_box
scoreboard objectives add ca.drop_box_cyan minecraft.dropped:minecraft.cyan_shulker_box
scoreboard objectives add ca.drop_box_purple minecraft.dropped:minecraft.purple_shulker_box
scoreboard objectives add ca.drop_box_blue minecraft.dropped:minecraft.blue_shulker_box
scoreboard objectives add ca.drop_box_brown minecraft.dropped:minecraft.brown_shulker_box
scoreboard objectives add ca.drop_box_green minecraft.dropped:minecraft.green_shulker_box
scoreboard objectives add ca.drop_box_red minecraft.dropped:minecraft.red_shulker_box
scoreboard objectives add ca.drop_box_black minecraft.dropped:minecraft.black_shulker_box

scoreboard objectives add ca.quick_drop_anim dummy

scoreboard objectives add ca.glass_cdl dummy

#Create mutex score
scoreboard objectives add ca.mutex dummy

#Trigger scoreboards for menus
scoreboard objectives add menu trigger

#Place Shulker Boxes needed for Shulker Box trick.
forceload add 4206900 4206900
forceload add 4206900 4206890
forceload add 4206890 4206900
forceload add 4206890 4206890

setblock 4206900 0 4206900 purple_shulker_box replace
setblock 4206900 7 4206900 purple_shulker_box destroy

#Shulker Box for Lexica, so a mapmaker can change the format.


#Create var scoreboard
scoreboard objectives add ca.var dummy

# Debug Messages have the following levels
# 0 - None shown
# 1 - Basic procs
# 2 - Game system events
# 3 - Handler events
scoreboard objectives add ca.debug_lvl dummy

scoreboard objectives add ca.registry dummy

scoreboard objectives add ca.inspect_var dummy
scoreboard objectives add ca.inspect_state dummy

#Create logout scoreboard
scoreboard objectives add ca.logout minecraft.custom:minecraft.leave_game

#Create vector related scoreboards
scoreboard objectives add ca.vectorX dummy
scoreboard objectives add ca.vectorY dummy
scoreboard objectives add ca.vectorZ dummy

#Create scoreboards for drawing bows, holding tridents, loading crossbows, using ender eyes, and holding up shields... etc.
scoreboard objectives add ca.draw_bow_time dummy
scoreboard objectives add ca.load_crossbow_time dummy
scoreboard objectives add ca.use_eye_time dummy
scoreboard objectives add ca.hold_shield_time dummy
scoreboard objectives add ca.aim_trident_time dummy
scoreboard objectives add ca.use_other_time dummy

scoreboard objectives add ca.use_carrot_on_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ca.use_warped_fungus_on_stick minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add ca.use_bow minecraft.used:minecraft.bow
scoreboard objectives add ca.use_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add ca.use_trident minecraft.used:minecraft.trident

scoreboard objectives add ca.use_splash_potion minecraft.used:minecraft.splash_potion
scoreboard objectives add ca.use_lingering_potion minecraft.used:minecraft.lingering_potion
scoreboard objectives add ca.use_snowball minecraft.used:minecraft.snowball

scoreboard objectives add ca.deal_damage_melee_normal minecraft.custom:minecraft.damage_dealt
scoreboard objectives add ca.deal_damage_melee_absorption minecraft.custom:minecraft.damage_dealt_absorbed
scoreboard objectives add ca.deal_damage_melee_resistance minecraft.custom:minecraft.damage_dealt_resisted

scoreboard objectives add ca.is_drawing_bow dummy
scoreboard objectives add ca.is_loading_crossbow dummy
scoreboard objectives add ca.is_using_eye dummy
scoreboard objectives add ca.is_holding_shield dummy
scoreboard objectives add ca.is_aiming_trident dummy
scoreboard objectives add ca.is_using_other dummy

scoreboard objectives add ca.shoot_bow minecraft.used:minecraft.bow
scoreboard objectives add ca.shoot_cross minecraft.used:minecraft.crossbow
scoreboard objectives add ca.throw_trident minecraft.used:minecraft.trident

scoreboard objectives add ca.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add ca.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add ca.sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add ca.swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add ca.water_walk minecraft.custom:minecraft.walk_under_water_one_cm


# Marker for reading tags in LTOS on entities [I;304092441,0,0,1]
# 12201519-0000-0000-0000-000000000001
summon marker 4206900 256 4206900 {UUID:[I;304092441,0,0,1]}

#Create raycast score
scoreboard objectives add ca.raycast dummy

#Create lifetime score
scoreboard objectives add ca.lifetime dummy

#Create abs handler score
scoreboard objectives add ca.abs_handler dummy
scoreboard objectives add ca.abs_time dummy

#Create Attack Cooldown Handler Scores
scoreboard objectives add ca.attack_cooldown_percent dummy
scoreboard objectives add ca.attack_cooldown_remaining dummy
scoreboard objectives add ca.attack_cooldown_total dummy

#Create In Combat Handler Scores
scoreboard objectives add ca.combat_score dummy

#Create Death Check Handler Scores
scoreboard objectives add ca.death_check deathCount
scoreboard objectives add ca.death_time minecraft.custom:minecraft.time_since_death


scoreboard objectives add ca.health health

scoreboard objectives add ca.epf_prot dummy
scoreboard objectives add ca.epf_proj dummy
scoreboard objectives add ca.epf_blas dummy
scoreboard objectives add ca.epf_fire dummy
scoreboard objectives add ca.epf_fall dummy

scoreboard objectives add ca.epf dummy

scoreboard objectives add ca.delta.cooldown dummy

#Create Delta Carto Marker
# 31182015-4512-2011-3118-115180000000
# [I;823664661,1158815761,823660881,-2147483648]
summon marker 4206900 128 4206900 {UUID:[I;823664661,1158815761,823660881,-2147483648]}


#Add the phe_listen and ehp_listen scores
scoreboard objectives add ehp_listen dummy
scoreboard objectives add phe_listen dummy

#Create timer variable
scoreboard objectives add ca.timer dummy
scoreboard players set $ca_timer ca.timer 0

#Solve this stupid bug made by how mojang coded right click armor equipping
scoreboard objectives add ca.equip_leather_boots minecraft.used:minecraft.leather_boots
scoreboard objectives add ca.equip_leather_leggings minecraft.used:minecraft.leather_leggings
scoreboard objectives add ca.equip_leather_chestplate minecraft.used:minecraft.leather_chestplate
scoreboard objectives add ca.equip_leather_helmet minecraft.used:minecraft.leather_helmet

scoreboard objectives add ca.equip_golden_boots minecraft.used:minecraft.golden_boots
scoreboard objectives add ca.equip_golden_leggings minecraft.used:minecraft.golden_leggings
scoreboard objectives add ca.equip_golden_chestplate minecraft.used:minecraft.golden_chestplate
scoreboard objectives add ca.equip_golden_helmet minecraft.used:minecraft.golden_helmet

scoreboard objectives add ca.equip_chainmail_boots minecraft.used:minecraft.chainmail_boots
scoreboard objectives add ca.equip_chainmail_leggings minecraft.used:minecraft.chainmail_leggings
scoreboard objectives add ca.equip_chainmail_chestplate minecraft.used:minecraft.chainmail_chestplate
scoreboard objectives add ca.equip_chainmail_helmet minecraft.used:minecraft.chainmail_helmet

scoreboard objectives add ca.equip_iron_boots minecraft.used:minecraft.iron_boots
scoreboard objectives add ca.equip_iron_leggings minecraft.used:minecraft.iron_leggings
scoreboard objectives add ca.equip_iron_chestplate minecraft.used:minecraft.iron_chestplate
scoreboard objectives add ca.equip_iron_helmet minecraft.used:minecraft.iron_helmet

scoreboard objectives add ca.equip_diamond_boots minecraft.used:minecraft.diamond_boots
scoreboard objectives add ca.equip_diamond_leggings minecraft.used:minecraft.diamond_leggings
scoreboard objectives add ca.equip_diamond_chestplate minecraft.used:minecraft.diamond_chestplate
scoreboard objectives add ca.equip_diamond_helmet minecraft.used:minecraft.diamond_helmet

scoreboard objectives add ca.equip_netherite_boots minecraft.used:minecraft.netherite_boots
scoreboard objectives add ca.equip_netherite_leggings minecraft.used:minecraft.netherite_leggings
scoreboard objectives add ca.equip_netherite_chestplate minecraft.used:minecraft.netherite_chestplate
scoreboard objectives add ca.equip_netherite_helmet minecraft.used:minecraft.netherite_helmet

scoreboard objectives add ca.equip_turtle_helmet minecraft.used:minecraft.turtle_helmet

scoreboard objectives add ca.core_delay_check dummy

scoreboard objectives add ca.damage_queue dummy

#scoreboard players set $no_anvil ca.gamerule 0

#Setup a score for any and all constant values.
scoreboard objectives add ca.CONSTANT dummy

scoreboard players reset * ca.CONSTANT

scoreboard players set $-1 ca.CONSTANT -1

scoreboard players set $10000 ca.CONSTANT 10000
scoreboard players set $1000 ca.CONSTANT 1000
scoreboard players set $100 ca.CONSTANT 100
scoreboard players set $10 ca.CONSTANT 10

scoreboard players set $12 ca.CONSTANT 12
scoreboard players set $13 ca.CONSTANT 13

scoreboard players set $15 ca.CONSTANT 15
scoreboard players set $17 ca.CONSTANT 17
scoreboard players set $18 ca.CONSTANT 18
scoreboard players set $19 ca.CONSTANT 19
scoreboard players set $20 ca.CONSTANT 20
scoreboard players set $21 ca.CONSTANT 21
scoreboard players set $25 ca.CONSTANT 25
scoreboard players set $30 ca.CONSTANT 30
scoreboard players set $33 ca.CONSTANT 33
scoreboard players set $35 ca.CONSTANT 35

scoreboard players set $40 ca.CONSTANT 40
scoreboard players set $41 ca.CONSTANT 41
scoreboard players set $50 ca.CONSTANT 50
scoreboard players set $55 ca.CONSTANT 55
scoreboard players set $65 ca.CONSTANT 65
scoreboard players set $67 ca.CONSTANT 67
scoreboard players set $60 ca.CONSTANT 60
scoreboard players set $70 ca.CONSTANT 70
scoreboard players set $75 ca.CONSTANT 75
scoreboard players set $77 ca.CONSTANT 77
scoreboard players set $80 ca.CONSTANT 80
scoreboard players set $81 ca.CONSTANT 81
scoreboard players set $90 ca.CONSTANT 90
scoreboard players set $120 ca.CONSTANT 120
scoreboard players set $125 ca.CONSTANT 125
scoreboard players set $133 ca.CONSTANT 133
scoreboard players set $140 ca.CONSTANT 140
scoreboard players set $150 ca.CONSTANT 150
scoreboard players set $200 ca.CONSTANT 200
scoreboard players set $210 ca.CONSTANT 210
scoreboard players set $225 ca.CONSTANT 225
scoreboard players set $250 ca.CONSTANT 250
scoreboard players set $300 ca.CONSTANT 300
scoreboard players set $600 ca.CONSTANT 600
scoreboard players set $1000 ca.CONSTANT 1000
scoreboard players set $1200 ca.CONSTANT 1200

scoreboard players set $1 ca.CONSTANT 1
scoreboard players set $2 ca.CONSTANT 2
scoreboard players set $3 ca.CONSTANT 3
scoreboard players set $4 ca.CONSTANT 4
scoreboard players set $5 ca.CONSTANT 5
scoreboard players set $6 ca.CONSTANT 6
scoreboard players set $7 ca.CONSTANT 7
scoreboard players set $8 ca.CONSTANT 8
scoreboard players set $9 ca.CONSTANT 9

scoreboard players set $core.difficulty ca.CONSTANT 0

forceload add 4206900 4206900
#Deletes any items in the forceload area
schedule function cartographer_core:load/cleanup_forceload 20t

#Gamerule tracking and management
scoreboard objectives add ca.gamerule dummy
scoreboard objectives add ca.reload_type dummy
#For Custom Enchantments
scoreboard objectives add ca.ui_loc dummy

execute unless score $gl_reload_msg ca.gamerule matches 0.. run scoreboard players set $gl_reload_msg ca.gamerule 0

scoreboard objectives add give_dev_box trigger


#Create options trigger score (for player options)
scoreboard objectives add ca.options_trig trigger
scoreboard players enable @a ca.options_trig

#Create the anvil, enchant table, and grindstone destruction scores.
scoreboard objectives add ca.use_anvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add ca.use_grind minecraft.custom:minecraft.interact_with_grindstone

#Setup LoE data space
function cartographer_core:load/integration/active/clear

#Schedule the loading message.
execute unless score $gl_reload_msg ca.gamerule matches 100 as @a at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 0.75

function cartographer_core:load/find_libraries/start

schedule function cartographer_core:load/reload_panel 5t
schedule function cartographer_core:load/make_dev_box 7t

#Analyse what gamerules feedback and death messages are set to.

#Schedule core clocks.

setblock 4206905 3 4206905 oak_sign replace

#Summon Armor Stand for Item Tag Evaluation
# "31192011-4452-2112-0000-000000000000"
summon armor_stand 4206900 0 4206900 {Marker:1b,Invisible:1b,NoGravity:1b,UUID:[I;823730193,1146233106,0,0]}
