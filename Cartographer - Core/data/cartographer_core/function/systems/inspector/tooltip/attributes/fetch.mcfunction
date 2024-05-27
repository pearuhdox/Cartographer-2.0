data modify storage cartographer_core:inspector description set value []
$data modify storage cartographer_core:inspector description set from storage cartographer_core:descriptions Attributes[{id:"$(id)"}].description

$data modify storage cartographer_core:inspector lore append from storage cartographer_core:descriptions Attributes[{id:"$(id)"}].name

function cartographer_core:systems/inspector/tooltip/attributes/fetch_recurse 
