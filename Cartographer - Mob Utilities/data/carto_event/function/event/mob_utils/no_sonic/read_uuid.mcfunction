data modify storage gu:main out set value "-"
function gu:convert with storage cartographer_mob_utils:warden data
data modify storage cartographer_mob_utils:warden data.suspect_uuid set from storage gu:main out