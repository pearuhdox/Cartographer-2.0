$execute unless data storage carto_event all.$(current_tick)[{event:"$(event)",parameters:{target:"$(target)"}}] run return fail

$data modify storage carto_event old set from storage carto_event all.$(current_tick)[{event:"$(event)",parameters:{target:"$(target)"}}]

$function carto_event:event/$(event)/custom_merge_behavior

$data modify storage carto_event all.$(current_tick)[{event:"$(event)",parameters:{target:"$(target)"}}] set from storage carto_event new
$execute as $(target) run return 1