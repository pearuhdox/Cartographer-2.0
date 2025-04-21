data modify storage amd:mob_data working_data.data.custom_status_actions set value {}

function cartographer_custom_statuses:calculator/process/create_action {action:"melee_hit"}
function cartographer_custom_statuses:calculator/process/create_action {action:"ranged_hit"}

function cartographer_custom_statuses:calculator/process/create_action {action:"potion_throw"}
function cartographer_custom_statuses:calculator/process/create_action {action:"passive"}
function cartographer_custom_statuses:calculator/process/create_action {action:"attacked"}

function cartographer_custom_statuses:calculator/process/create_action {action:"surge"}
function cartographer_custom_statuses:calculator/process/create_action {action:"deadeye"}
function cartographer_custom_statuses:calculator/process/create_action {action:"trailblazer"}

function cartographer_custom_statuses:calculator/process/create_action {action:"starfall"}
function cartographer_custom_statuses:calculator/process/create_action {action:"orbit"}

function cartographer_custom_statuses:calculator/process/create_action {action:"storm"}
function cartographer_custom_statuses:calculator/process/create_action {action:"induction"}

function cartographer_custom_statuses:calculator/process/create_action {action:"eruption"}
function cartographer_custom_statuses:calculator/process/create_action {action:"soulfire"}

function cartographer_custom_statuses:calculator/process/create_action {action:"quake"}
function cartographer_custom_statuses:calculator/process/create_action {action:"aberration"}

function cartographer_custom_statuses:calculator/process/create_action {action:"thorns"}

function cartographer_custom_statuses:calculator/process/create_action {action:"special_attack"}


#function cartographer_custom_statuses:calculator/process/create_action {action:"kill"}
#function cartographer_custom_statuses:calculator/process/create_action {action:"passive"}
#function cartographer_custom_statuses:calculator/process/create_action {action:"jump"}
#function cartographer_custom_statuses:calculator/process/create_action {action:"break_spawner"}
#function cartographer_custom_statuses:calculator/process/create_action {action:"consume"}
#function cartographer_custom_statuses:calculator/process/create_action {action:"attacked"}

#function cartographer_custom_statuses:calculator/process/create_action {action:"enchantment"}

scoreboard players set $run_passive ca.status_var 0
execute if entity @s[tag=ca.apply_status_passive_self] run scoreboard players set $run_passive ca.status_var 1
execute if entity @s[tag=ca.apply_status_passive_target] run scoreboard players set $run_passive ca.status_var 1

execute if score $run_passive ca.status_var matches 1.. run function carto_event:api/create_single_entity_event {event:"status_passive",duration:17,delay:3,parameters:{},merge_behavior:"none"}

#FUNCTION TAG HERE