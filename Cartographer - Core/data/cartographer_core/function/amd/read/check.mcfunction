$execute if data storage amd:mob_data storage[{uuid:"$(out)"}] run function cartographer_core:amd/read/fetch with storage gu:main
$execute unless data storage amd:mob_data storage[{uuid:"$(out)"}] run function cartographer_core:amd/read/create with storage gu:main