$say data remove storage carto_event all.$(current_tick)[{event:"$(event)",type:"$(type)",parameters:{owner:"$(entity)"}}]

$data remove storage carto_event all.$(current_tick)[{event:"$(event)",type:"$(type)",parameters:{owner:"$(entity)"}}]
$data remove storage carto_event all.$(next_tick)[{event:"$(event)",type:"$(type)",parameters:{owner:"$(entity)"}}]