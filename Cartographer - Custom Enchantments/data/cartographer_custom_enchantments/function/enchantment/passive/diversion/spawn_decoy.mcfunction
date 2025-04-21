scoreboard players set @s ca.diversion_entropy 0
scoreboard players operation @s ca.diversion_entropy -= $value ca.ench_var

playsound minecraft:block.glass.break player @s ~ ~ ~ 0.5 1
playsound minecraft:event.mob_effect.bad_omen player @s ~ ~ ~ 0.5 1.5
execute align y positioned ~ ~ ~ run summon zombie ~ ~-0.7 ~ {NoGravity:1b,Silent:1b,DeathLootTable:"minecraft:entities/slime",NoAI:1b,AbsorptionAmount:15f,IsBaby:1b,Tags:["ca.ench_ominous_decoy","ca.new_decoy","ca.purgable_entity"],equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:profile":{id:[I;-1820414601,1211385292,-1764045618,725729317],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzEzN2EwOTc3ODcwM2U1MDA3YWMwY2I2YTMzY2NmOTUyNTljZGNhZWU0NjEzMDIxZDlhYzYwZGUwZGNlOGZlYiJ9fX0="}]}}}},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:2000000,show_particles:0b,show_icon:0b,ambient:0b},{id:"minecraft:resistance",amplifier:4,duration:10,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_absorption",base:15}]}

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

execute as @e[type=#cartographer_core:affected_by_carto,distance=..24,tag=!ca.ench_ominous_decoy] at @s run function cartographer_custom_enchantments:enchantment/passive/diversion/mob_branch
execute as @e[type=zombie,tag=ca.ench_ominous_decoy,tag=ca.new_decoy] at @s run function cartographer_custom_enchantments:enchantment/passive/diversion/decoy_branch with storage cartographer:custom_enchantments

scoreboard players add @s ca.diversion_ct 1

scoreboard players add $count ca.entity_purge_var 1