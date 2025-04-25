
function cartographer_core:pldata/read

data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data set value {}

data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.feet.components.minecraft:custom_data.apply_status
data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.legs.components.minecraft:custom_data.apply_status
data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.chest.components.minecraft:custom_data.apply_status
data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.head.components.minecraft:custom_data.apply_status

data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.apply_status
data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.main.components.minecraft:custom_data.apply_status

data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.body.components.minecraft:custom_data.apply_status
data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips append from storage cartographer_core:player_equip data.saddle.components.minecraft:custom_data.apply_status

function cartographer_core:pldata/write

function cartographer_core:pldata/read
data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions set value {}


function cartographer_custom_statuses:calculator/process/create_action/melee_hit
function cartographer_custom_statuses:calculator/process/create_action/ranged_hit
function cartographer_custom_statuses:calculator/process/create_action/potion_throw

function cartographer_custom_statuses:calculator/process/create_action/kill
function cartographer_custom_statuses:calculator/process/create_action/passive
function cartographer_custom_statuses:calculator/process/create_action/jump
function cartographer_custom_statuses:calculator/process/create_action/break_spawner
function cartographer_custom_statuses:calculator/process/create_action/consume
function cartographer_custom_statuses:calculator/process/create_action/attacked

execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_statuses:calculator/process/start_custom_enchantments

#FUNCTION TAG HERE

function cartographer_core:pldata/write