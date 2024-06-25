function bb:lib/pldata/read
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.actions set value {}

function cartographer_custom_statuses:calculator/process/create_action {action:"melee_hit"}
function cartographer_custom_statuses:calculator/process/create_action {action:"ranged_hit"}
function cartographer_custom_statuses:calculator/process/create_action {action:"kill"}
function cartographer_custom_statuses:calculator/process/create_action {action:"sprint_melee_hit"}
function cartographer_custom_statuses:calculator/process/create_action {action:"sneak_melee_hit"}
function cartographer_custom_statuses:calculator/process/create_action {action:"critical_melee_hit"}
function cartographer_custom_statuses:calculator/process/create_action {action:"sneak_ranged_hit"}
#function cartographer_custom_statuses:calculator/process/create_action {action:"enchantment"}

#FUNCTION TAG HERE

function bb:lib/pldata/write