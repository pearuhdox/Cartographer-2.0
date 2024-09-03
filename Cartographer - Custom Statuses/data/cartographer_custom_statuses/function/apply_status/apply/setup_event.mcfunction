$execute if score $custom_attributes ca.installed matches 1.. as $(owner) at @s run function cartographer_custom_statuses:apply_status/apply/modify_event with storage cartographer:custom_statuses apply[0]

$function cartographer_custom_statuses:apply_status/apply/effect/$(id)/do with storage cartographer:custom_statuses apply[0]
