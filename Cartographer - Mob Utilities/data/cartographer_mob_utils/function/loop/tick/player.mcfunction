tag @s remove ca.has_wither
execute if predicate cartographer_core:potion_effect/has_wither run tag @s add ca.has_wither

tag @s remove ca.has_poison
execute if predicate cartographer_core:potion_effect/has_poison run tag @s add ca.has_poison

tag @s remove ca.has_dolphins_grace
execute if predicate cartographer_core:potion_effect/has_dolphins_grace run tag @s add ca.has_dolphins_grace

tag @s remove ca.has_slowness
execute if predicate cartographer_core:potion_effect/has_slowness run tag @s add ca.has_slowness

tag @s remove ca.has_mining_fatigue
execute if predicate cartographer_core:potion_effect/has_mining_fatigue run tag @s add ca.has_mining_fatigue

tag @s remove ca.has_levitation
execute if predicate cartographer_core:potion_effect/has_levitation run tag @s add ca.has_levitation

tag @s remove ca.has_darkness
execute if predicate cartographer_core:potion_effect/has_darkness run tag @s add ca.has_darkness

tag @s remove ca.has_done_effect_calc
execute if entity @s[tag=ca.has_wither] run function cartographer_mob_utils:no_effects/get_cur_effect/wither
execute if entity @s[tag=ca.has_poison] run function cartographer_mob_utils:no_effects/get_cur_effect/poison
execute if entity @s[tag=ca.has_slowness] run function cartographer_mob_utils:no_effects/get_cur_effect/slowness
execute if entity @s[tag=ca.has_mining_fatigue] run function cartographer_mob_utils:no_effects/get_cur_effect/mining_fatigue
execute if entity @s[tag=ca.has_darkness] run function cartographer_mob_utils:no_effects/get_cur_effect/darkness
execute if entity @s[tag=ca.has_levitation] run function cartographer_mob_utils:no_effects/get_cur_effect/levitation
execute if entity @s[tag=ca.has_dolphins_grace] run function cartographer_mob_utils:no_effects/get_cur_effect/dolphins


execute if score $gamerule ca.ticks_frozen matches 0 run function cartographer_mob_utils:loop/tick/freeze/tick
