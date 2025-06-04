
execute if score $end_lvl ca.xp matches 0..16 run function cartographer_core:handlers/xp/get_req/math/from_0/0-16
execute if score $end_lvl ca.xp matches 17..31 run function cartographer_core:handlers/xp/get_req/math/from_0/17-31
execute if score $end_lvl ca.xp matches 32.. run function cartographer_core:handlers/xp/get_req/math/from_0/32