#Copy over old tick count every time
data modify storage carto_event new.parameters.tick_count set from storage carto_event old.parameters.tick_count