function bb:lib/pldata/read
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.actions set value {}

function cartographer_custom_statuses:calculator/process/create_action {action:"melee_hit"}
function cartographer_custom_statuses:calculator/process/create_action {action:"ranged_hit"}
function cartographer_custom_statuses:calculator/process/create_action {action:"potion_throw"}

function cartographer_custom_statuses:calculator/process/create_action {action:"kill"}
function cartographer_custom_statuses:calculator/process/create_action {action:"passive"}
function cartographer_custom_statuses:calculator/process/create_action {action:"jump"}
function cartographer_custom_statuses:calculator/process/create_action {action:"break_spawner"}
function cartographer_custom_statuses:calculator/process/create_action {action:"consume"}
function cartographer_custom_statuses:calculator/process/create_action {action:"attacked"}

execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_statuses:calculator/process/start_custom_enchantments

#FUNCTION TAG HERE

function bb:lib/pldata/write