$function carto_event:api/$(call) $(parameters)

execute if data storage carto_event api_que[0] run function carto_event:tick/run_api_que with storage carto_event api_que[0]