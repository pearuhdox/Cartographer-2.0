data modify storage cartographer:custom_statuses apply set value []

$data modify storage cartographer:custom_statuses apply set from storage $(location) $(path).$(action).$(type)

data modify storage cartographer:custom_statuses conditional_data set from storage bbl:pldata sudo_root.working_data.cartographer.status_condition_data

$function cartographer_custom_statuses:apply_status/apply/rec {action:"$(action)",type:"$(type)"}

data modify storage cartographer:custom_statuses conditional_data set from storage bbl:pldata sudo_root.working_data.cartographer.status_condition_data

data modify storage bbl:pldata sudo_root.working_data.cartographer.status_condition_data set from storage cartographer:custom_statuses conditional_data
#Write to player data
function bb:lib/pldata/write