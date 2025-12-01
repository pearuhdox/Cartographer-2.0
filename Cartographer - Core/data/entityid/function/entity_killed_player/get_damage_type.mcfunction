scoreboard players set $melee ehid_damage_type 0
scoreboard players set $fake_melee ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={mob_attack=true}}] run scoreboard players set $melee ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={mob_attack_no_aggro=true}}] run scoreboard players set $melee ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={mace_smash=true}}] run scoreboard players set $melee ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={player_attack=true}}] run scoreboard players set $melee ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={spear=true}}] run scoreboard players set $melee ehid_damage_type 1
#Should not activate certain things
execute if entity @s[advancements={entityid:entity_killed_player={carto_enchants_fake_melee_damage=true}}] run scoreboard players set $melee ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={carto_enchants_fake_melee_damage=true}}] run scoreboard players set $fake_melee ehid_damage_type 1

scoreboard players set $projectile ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={arrow=true}}] run scoreboard players set $projectile ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={fireball=true}}] run scoreboard players set $projectile ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={mob_projectile=true}}] run scoreboard players set $projectile ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={thrown=true}}] run scoreboard players set $projectile ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={trident=true}}] run scoreboard players set $projectile ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={unattributed_fireball=true}}] run scoreboard players set $projectile ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={wind_charge=true}}] run scoreboard players set $projectile ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={wither_skull=true}}] run scoreboard players set $projectile ehid_damage_type 1

#Do not include because these are only used for invul frame reset
#execute if entity @s[advancements={entityid:entity_killed_player={carto_enchants_projectile_damage_bypass=true}}] run scoreboard players set $projectile ehid_damage_type 1

#Include because these hits do actual damage
execute if entity @s[advancements={entityid:entity_killed_player={carto_enchants_throwable_damage=true}}] run scoreboard players set $projectile ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={carto_attributes_fishing_bobber_damage=true}}] run scoreboard players set $projectile ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={carto_attributes_fishing_bobber_damage_bypass=true}}] run scoreboard players set $projectile ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={carto_attributes_potion_damage=true}}] run scoreboard players set $projectile ehid_damage_type 1

scoreboard players set $carto_potion ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={carto_attributes_potion_damage=true}}] run scoreboard players set $carto_potion ehid_damage_type 1

scoreboard players set $explosion ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={bad_respawn_point=true}}] run scoreboard players set $explosion ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={explosion=true}}] run scoreboard players set $explosion ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={fireworks=true}}] run scoreboard players set $explosion ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={player_explosion=true}}] run scoreboard players set $explosion ehid_damage_type 1

scoreboard players set $direct_attack ehid_damage_type 0
execute if score $melee ehid_damage_type matches 1 run scoreboard players set $direct_attack ehid_damage_type 1
execute if score $projectile ehid_damage_type matches 1 run scoreboard players set $direct_attack ehid_damage_type 1
execute if score $explosion ehid_damage_type matches 1 run scoreboard players set $direct_attack ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={dragon_breath=true}}] run scoreboard players set $direct_attack ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={sonic_boom=true}}] run scoreboard players set $direct_attack ehid_damage_type 1

scoreboard players set $falling ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={ender_pearl=true}}] run scoreboard players set $falling ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={fall=true}}] run scoreboard players set $falling ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={stalagmite=true}}] run scoreboard players set $falling ehid_damage_type 1

scoreboard players set $freezing ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={freeze=true}}] run scoreboard players set $freezing ehid_damage_type 1

scoreboard players set $drowning ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={drown=true}}] run scoreboard players set $drowning ehid_damage_type 1

scoreboard players set $fire ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={campfire=true}}] run scoreboard players set $fire ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={fireball=true}}] run scoreboard players set $fire ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={hot_floor=true}}] run scoreboard players set $fire ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={in_fire=true}}] run scoreboard players set $fire ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={lava=true}}] run scoreboard players set $fire ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={on_fire=true}}] run scoreboard players set $fire ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={unattributed_fireball=true}}] run scoreboard players set $fire ehid_damage_type 1

scoreboard players set $magic ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={wither=true}}] run scoreboard players set $magic ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={magic=true}}] run scoreboard players set $magic ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={indirect_magic=true}}] run scoreboard players set $magic ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={dragon_breath=true}}] run scoreboard players set $magic ehid_damage_type 1

scoreboard players set $opportunist ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={carto_enchants_opportunist_damage=true}}] run scoreboard players set $opportunist ehid_damage_type 1

scoreboard players set $status ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={carto_statuses_status_damage=true}}] run scoreboard players set $status ehid_damage_type 1

scoreboard players set $no_triggers ehid_damage_type 0
execute if entity @s[advancements={entityid:entity_killed_player={carto_attributes_attribute_damage_bypass=true}}] run scoreboard players set $no_triggers ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={carto_enchants_enchant_damage_bypass=true}}] run scoreboard players set $no_triggers ehid_damage_type 1
execute if entity @s[advancements={entityid:entity_killed_player={carto_enchants_projectile_damage_bypass=true}}] run scoreboard players set $no_triggers ehid_damage_type 1
