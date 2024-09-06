function bb:lib/pldata/read

data modify storage cartographer_custom_attributes:calculator custom_attributes set value {}
data modify storage cartographer_custom_attributes:calculator custom_attributes set from storage bbl:pldata sudo_root.working_data.cartographer.custom_attributes

scoreboard players set $disable_mainhand ca.attr_var 0
scoreboard players set $disable_offhand ca.attr_var 0

scoreboard players set $disable_head ca.attr_var 0
scoreboard players set $disable_body ca.attr_var 0
scoreboard players set $disable_legs ca.attr_var 0
scoreboard players set $disable_feet ca.attr_var 0

execute if items entity @s weapon.mainhand #cartographer_core:arrow if items entity @s weapon.offhand #cartographer_core:shoots_arrow run scoreboard players set $disable_mainhand ca.attr_var 1
execute if items entity @s weapon.offhand #cartographer_core:arrow if items entity @s weapon.mainhand #cartographer_core:shoots_arrow run scoreboard players set $disable_offhand ca.attr_var 1

execute if items entity @s weapon.mainhand #cartographer_core:wearables run scoreboard players set $disable_mainhand ca.attr_var 1
execute if items entity @s weapon.offhand #cartographer_core:wearables run scoreboard players set $disable_offhand ca.attr_var 1

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"ranged_damage"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"ranged_velocity"}

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"combat_luck"}

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"potion_size"}

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"aoe_size"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"aoe_damage"}

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"status_inflict_damage"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"status_inflict_duration"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"status_inflict_potency"}

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"status_apply_duration"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"status_apply_potency"}

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"healing_power"}

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"precise_hit_chance"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"precise_hit_damage"}

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"restrike_chance"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"restrike_damage"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"restrike_amount"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"restrike_rate"}

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"chaining_chance"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"chaining_damage"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"chaining_amount"}

function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"life_drain_chance"}
function cartographer_custom_attributes:calculator/process/create_attribute {attribute:"life_drain_amount"}

#FUNCTION TAG HERE

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"ranged_damage",base_value:0}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"ranged_velocity",base_value:100}

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"combat_luck",base_value:100}

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"potion_size",base_value:0}

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"aoe_size",base_value:0}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"aoe_damage",base_value:0}

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"status_inflict_damage",base_value:0}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"status_inflict_duration",base_value:0}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"status_inflict_potency",base_value:0}

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"status_apply_duration",base_value:0}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"status_apply_potency",base_value:0}

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"healing_power",base_value:0}

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"precise_hit_chance",base_value:100}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"precise_hit_damage",base_value:0}

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"restrike_chance",base_value:100}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"restrike_damage",base_value:0}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"restrike_amount",base_value:0}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"restrike_rate",base_value:0}

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"chaining_chance",base_value:100}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"chaining_damage",base_value:0}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"chaining_amount",base_value:0}

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"life_drain_chance",base_value:100}
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/start {attribute:"life_drain_amount",base_value:0}

data modify storage bbl:pldata sudo_root.working_data.cartographer.custom_attributes set value {}
data modify storage bbl:pldata sudo_root.working_data.cartographer.custom_attributes set from storage cartographer_custom_attributes:calculator custom_attributes

function bb:lib/pldata/write

execute if score @s ca.attr_healing_power_total matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/healing_power/tracking_start