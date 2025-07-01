execute store result storage cartographer:mob_utils x int 0.1 run random value -40..40
execute store result storage cartographer:mob_utils z int 0.1 run random value -40..40
execute store result storage cartographer:mob_utils delay int 1 run random value 45..105

function cartographer_mob_utils:stacking/display/drop/ominous_item_spawner/branch with storage cartographer:mob_utils