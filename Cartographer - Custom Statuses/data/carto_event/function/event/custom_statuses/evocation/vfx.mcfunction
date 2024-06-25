playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 1 0.5
particle crit ~ ~ ~ 0.25 0.25 0.25 0.4 30 normal
particle dust{color:[0.522,0.404,0.314],scale:3} ~ ~ ~ 0.25 0.25 0.25 1 7 normal

execute if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters