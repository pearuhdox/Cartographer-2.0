
data modify storage gu:main out set value "-"
function gu:generate
data modify storage carto_event current[-1].parameters.target set from storage gu:main out
