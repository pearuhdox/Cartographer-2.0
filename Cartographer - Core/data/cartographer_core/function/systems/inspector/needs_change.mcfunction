data modify storage cartographer_core:inspector bundle set value {id:"minecraft:bundle",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"#D6C898","fallback":"Cartographer\'s Inspector","italic":false,"translate":"cartographer.systems.inspector.name"}',"minecraft:lore":['{"color":"gray","italic":false,"text":"Place an item in this item to"}','{"color":"gray","italic":false,"text":"display a description of all custom"}','{"color":"gray","italic":false,"text":"enchantments and their effects."}'],"minecraft:custom_data":{CartographerInspector:1b}}}

execute if data storage cartographer_core:inspector Item.id run function cartographer_core:systems/inspector/tooltip/start

execute unless data storage cartographer_core:inspector Item.id run function cartographer_core:systems/inspector/reset_tooltip

function cartographer_core:systems/inspector/replace