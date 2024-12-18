
scoreboard players set $confusion_target_success ca.status_var 0

#Can target any allowed entity in the charm attack category
$execute store success score $confusion_target_success ca.status_var if entity @s[type=!#cartographer_custom_statuses:confused/illager,type=!#cartographer_custom_statuses:confused/pack_mobs] if entity @s[type=#cartographer_custom_statuses:confused/allowed] run damage @s $(damage) cartographer_custom_statuses:status_damage by @e[type=#cartographer_custom_statuses:confused/target/all,sort=nearest,limit=1,distance=0.25..$(range),tag=!ca.has_custom_status_confused]

#Illagers can attack any entity that is not another illager
$execute store success score $confusion_target_success ca.status_var if entity @s[type=#cartographer_custom_statuses:confused/illager] run damage @s $(damage) cartographer_custom_statuses:status_damage by @e[type=#cartographer_custom_statuses:confused/target/illager,sort=nearest,limit=1,distance=0.25..$(range),tag=!ca.has_custom_status_confused]

#Piglins can attack any entity that is not a piglin or a brute
$execute store success score $confusion_target_success ca.status_var if entity @s[type=piglin] run damage @s $(damage) cartographer_custom_statuses:status_damage by @e[type=#cartographer_custom_statuses:confused/target/piglin,sort=nearest,limit=1,distance=0.25..$(range),tag=!ca.has_custom_status_confused]

#Brutes can attack any entity that is not a brute
$execute store success score $confusion_target_success ca.status_var if entity @s[type=piglin_brute] run damage @s $(damage) cartographer_custom_statuses:status_damage by @e[type=#cartographer_custom_statuses:confused/target/brute,sort=nearest,limit=1,distance=0.25..$(range),tag=!ca.has_custom_status_confused]

#Hoglin can attack any entity that is not a Hoglin
$execute store success score $confusion_target_success ca.status_var if entity @s[type=hoglin] run damage @s $(damage) cartographer_custom_statuses:status_damage by @e[type=#cartographer_custom_statuses:confused/target/hoglin,sort=nearest,limit=1,distance=0.25..$(range),tag=!ca.has_custom_status_confused]

#Drowned can attack any entity that is not a Drowned
$execute store success score $confusion_target_success ca.status_var if entity @s[type=drowned] run damage @s $(damage) cartographer_custom_statuses:status_damage by @e[type=#cartographer_custom_statuses:confused/target/drowned,sort=nearest,limit=1,distance=0.25..$(range),tag=!ca.has_custom_status_confused]

#Shulker can attack any entity that is not a Shulker
$execute store success score $confusion_target_success ca.status_var if entity @s[type=shulker] run damage @s $(damage) cartographer_custom_statuses:status_damage by @e[type=#cartographer_custom_statuses:confused/target/shulker,sort=nearest,limit=1,distance=0.25..$(range),tag=!ca.has_custom_status_confused]


# If no retarget was successful - set a cooldown before attempting again - then set 1 second of Slowness 1
$execute if score $confusion_target_success ca.status_var matches 0 run damage @s $(damage) cartographer_custom_statuses:status_damage
execute if score $confusion_target_success ca.status_var matches 0 run scoreboard players set @s ca.confused_cdl 80
execute if score $confusion_target_success ca.status_var matches 0 run effect give @s slowness 1 0

# Creepers get placed on a 4 second cooldown regardless and are ignited
execute if entity @s[type=creeper] run scoreboard players set @s ca.confused_cdl 80
execute if entity @s[type=creeper] run data modify entity @s ignited set value 1b