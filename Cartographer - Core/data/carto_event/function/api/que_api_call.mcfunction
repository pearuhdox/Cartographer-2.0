# function carto_event:api/que_api_call {call:"",parameters:""}
#
# Call is the Api call to call *next* tick
# Parameters are the call's parameters

$data modify storage carto_event api_que append value {call:"$(call)",parameters:$(parameters)}