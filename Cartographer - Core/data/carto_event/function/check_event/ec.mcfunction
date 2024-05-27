$execute if data storage carto_event all.$(current_tick)[{event:"$(event)",type:"$(type)",parameters:{$(entity_type):"$(entity)"}}] run return 1
$execute if data storage carto_event all.$(next_tick)[{event:"$(event)",type:"$(type)",parameters:{$(entity_type):"$(entity)"}}] run return 1

return fail