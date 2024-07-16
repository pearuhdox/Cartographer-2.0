data modify storage cartographer_core:inspector description set value []
$data modify storage cartographer_core:inspector description set from storage cartographer_core:descriptions Statuses[{id:"$(id)"}].description

$data modify storage cartographer_core:inspector lore append from storage cartographer_core:descriptions Statuses[{id:"$(id)"}].name

function cartographer_core:systems/inspector/tooltip/custom_statuses/fetch_recurse
