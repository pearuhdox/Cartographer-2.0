$execute if data storage carto_event all.$(current_tick)[{event:"$(event)",parameters:{owner:"$(owner)",target:"$(target)"}}] run return run data modify storage carto_event all.$(current_tick)[{event:"$(event)",parameters:{owner:"$(owner)",target:"$(target)"}}] merge from storage carto_event new

return fail