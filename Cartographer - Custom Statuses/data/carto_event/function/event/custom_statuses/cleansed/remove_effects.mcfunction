effect clear @s minecraft:blindness
effect clear @s minecraft:darkness
effect clear @s minecraft:hunger
effect clear @s minecraft:levitation
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:nausea
effect clear @s minecraft:poison
effect clear @s minecraft:slowness
effect clear @s minecraft:unluck
effect clear @s minecraft:weakness
effect clear @s minecraft:wither

attribute @s minecraft:generic.attack_damage modifier remove ca.siphon_strength
attribute @s minecraft:generic.movement_speed modifier remove ca.siphon_speed

attribute @s minecraft:generic.attack_damage modifier remove ca.weakness
attribute @s minecraft:generic.movement_speed modifier remove ca.slowness

attribute @s minecraft:generic.follow_range modifier remove ca.confused_follow_range_force_off

attribute @s minecraft:generic.movement_speed modifier remove ca.confused_speed
attribute @s minecraft:generic.knockback_resistance modifier remove ca.confused_kbr
attribute @s minecraft:generic.attack_knockback modifier remove ca.confused_kb
attribute @s minecraft:generic.attack_damage modifier remove ca.confused_atk

attribute @s minecraft:generic.armor modifier remove ca.armor_shred

attribute @s minecraft:generic.follow_range modifier remove ca.blindness

attribute @s minecraft:generic.step_height modifier remove ca.grounded
attribute @s minecraft:generic.gravity modifier remove ca.grounded
attribute @s minecraft:generic.jump_strength modifier remove ca.grounded

attribute @s minecraft:generic.follow_range modifier remove ca.asleep_follow_range
attribute @s minecraft:generic.movement_speed modifier remove ca.asleep_speed
attribute @s minecraft:generic.attack_damage modifier remove ca.asleep_damage

attribute @s minecraft:generic.follow_range modifier remove ca.stunned_follow_range
attribute @s minecraft:generic.movement_speed modifier remove ca.stunned_speed
attribute @s minecraft:generic.attack_damage modifier remove ca.stunned_damage

attribute @s minecraft:generic.movement_speed modifier remove ca.dazed_speed
attribute @s minecraft:generic.attack_damage modifier remove ca.dazed_damage