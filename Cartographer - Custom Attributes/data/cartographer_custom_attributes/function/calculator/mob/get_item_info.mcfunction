data modify storage cartographer_custom_attributes:mob_calculator item_data set value {}

$data modify storage cartographer_custom_attributes:mob_calculator item_data set from entity @s $(slot).components.minecraft:custom_data.custom_attributes

data modify storage cartographer_custom_attributes:mob_calculator mob_data set value {}
function cartographer_core:amd/read

data modify storage cartographer_custom_attributes:mob_calculator mob_data set from storage amd:mob_data working_data.data.custom_attributes

function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"ranged_damage",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"ranged_velocity",base_value:100}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"combat_luck",base_value:100}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"potion_size",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"aoe_size",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"aoe_damage",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"status_inflict_damage",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"status_inflict_duration",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"status_inflict_potency",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"status_apply_duration",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"status_apply_potency",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"healing_power",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"precise_hit_chance",base_value:100}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"precise_hit_damage",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"restrike_chance",base_value:100}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"restrike_damage",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"restrike_amount",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"restrike_rate",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"chaining_chance",base_value:100}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"chaining_damage",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"chaining_amount",base_value:0}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"life_drain_chance",base_value:100}
function cartographer_custom_attributes:calculator/mob/score_calc {attribute:"life_drain_amount",base_value:0}

data modify storage amd:mob_data working_data.data.custom_attributes set from storage cartographer_custom_attributes:mob_calculator mob_data 

function cartographer_core:amd/write
