
$data modify storage cartographer:lexica page set value {id:"minecraft:filled_map",components:{"minecraft:max_stack_size":1,"minecraft:map_color":$(color),"minecraft:custom_name":$(name),"minecraft:custom_data":{lexica_page:1b,category:$(category),id:$(id)}}}
data modify storage cartographer:lexica item.components.minecraft:bundle_contents append from storage cartographer:lexica page
