$scoreboard players add $(target) ca.instability_type 1
$execute if score $(target) ca.instability_type matches 5.. run scoreboard players set $(target) ca.instability_type 1

return 0