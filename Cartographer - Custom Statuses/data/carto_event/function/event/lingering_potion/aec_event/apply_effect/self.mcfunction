data modify storage cartographer:custom_statuses lingering_cloud set value {}

function cartographer_core:amd/read
data modify storage cartographer:custom_statuses lingering_cloud.data.lingering_cloud set from storage amd:mob_data working_data.data.projectile

$execute as @a[distance=..$(radius),predicate=cartographer_core:potion_effect/has_nausea] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"lingering_cloud.data",action:"lingering_cloud",type:"self"}