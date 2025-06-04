execute store result score $ench_hazard_protection ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_enchantment_rework:hazard_protection
execute if score $ench_hazard_protection ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"hazard_protection",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.hazard_protection", fallback: "Hazard Protection", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_hazard_protection ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_hazard_protection ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_melee_protection ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_enchantment_rework:melee_protection
execute if score $ench_melee_protection ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"melee_protection",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.melee_protection", fallback: "Melee Protection", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_melee_protection ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_melee_protection ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_ranged_protection ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_enchantment_rework:ranged_protection
execute if score $ench_ranged_protection ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"ranged_protection",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.ranged_protection", fallback: "Ranged Protection", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_ranged_protection ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_ranged_protection ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_agility ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:vanilla/agility
execute if score $ench_agility ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"agility",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.agility", fallback: "Agility", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_agility ca.lexica_var matches 1.. run scoreboard players set $attr_jump_strength ca.lexica_var 1
execute if score $ench_agility ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_agility ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_amplitude ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/amplitude
execute if score $ench_amplitude ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"amplitude",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.amplitude", fallback: "Amplitude", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_amplitude ca.lexica_var matches 1.. run scoreboard players set $attr_aoe_size ca.lexica_var 1
execute if score $ench_amplitude ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_amplitude ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_celerity ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:vanilla/celerity
execute if score $ench_celerity ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"celerity",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.celerity", fallback: "Celerity", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_celerity ca.lexica_var matches 1.. run scoreboard players set $attr_speed ca.lexica_var 1
execute if score $ench_celerity ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_celerity ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_cloudstep ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/cloudstep
execute if score $ench_cloudstep ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"cloudstep",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.cloudstep", fallback: "Cloudstep", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_cloudstep ca.lexica_var matches 1.. run scoreboard players set $attr_extra_jump_count ca.lexica_var 1
execute if score $ench_cloudstep ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_cloudstep ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_dexterity ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:vanilla/dexterity
execute if score $ench_dexterity ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"dexterity",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.dexterity", fallback: "Dexterity", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_dexterity ca.lexica_var matches 1.. run scoreboard players set $attr_attack_speed ca.lexica_var 1
execute if score $ench_dexterity ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_dexterity ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_echo ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/echo
execute if score $ench_echo ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"echo",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.echo", fallback: "Echo", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_echo ca.lexica_var matches 1.. run scoreboard players set $attr_restrike_hit_chance ca.lexica_var 1
execute if score $ench_echo ca.lexica_var matches 1.. run scoreboard players set $attr_restrike_hit_amount ca.lexica_var 1
execute if score $ench_echo ca.lexica_var matches 1.. run scoreboard players set $attr_restrike_hit_rate ca.lexica_var 1
execute if score $ench_echo ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_echo ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_extended ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:vanilla/extended
execute if score $ench_extended ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"extended",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.extended", fallback: "Extended", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_extended ca.lexica_var matches 1.. run scoreboard players set $attr_entity_interaction_range ca.lexica_var 1
execute if score $ench_extended ca.lexica_var matches 1.. run scoreboard players set $attr_block_interaction_range ca.lexica_var 1
execute if score $ench_extended ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_extended ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_finesse ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:vanilla/finesse
execute if score $ench_finesse ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"finesse",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.finesse", fallback: "Finesse", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_finesse ca.lexica_var matches 1.. run scoreboard players set $attr_attack_damage ca.lexica_var 1
execute if score $ench_finesse ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_finesse ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_handling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:vanilla/handling
execute if score $ench_handling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"handling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.handling", fallback: "Handling", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_handling ca.lexica_var matches 1.. run scoreboard players set $attr_mining_efficiency ca.lexica_var 1
execute if score $ench_handling ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_handling ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_immovable ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:vanilla/immovable
execute if score $ench_immovable ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"immovable",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.immovable", fallback: "Immovable", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_immovable ca.lexica_var matches 1.. run scoreboard players set $attr_knockback_resistance ca.lexica_var 1
execute if score $ench_immovable ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_immovable ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_invigorated ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/invigorated
execute if score $ench_invigorated ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"invigorated",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.invigorated", fallback: "Invigorated", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_invigorated ca.lexica_var matches 1.. run scoreboard players set $attr_healing_power ca.lexica_var 1
execute if score $ench_invigorated ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_invigorated ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_lifesteal ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/lifesteal
execute if score $ench_lifesteal ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"lifesteal",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.lifesteal", fallback: "Lifesteal", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_lifesteal ca.lexica_var matches 1.. run scoreboard players set $attr_life_drain_chance ca.lexica_var 1
execute if score $ench_lifesteal ca.lexica_var matches 1.. run scoreboard players set $attr_life_drain_amount ca.lexica_var 1
execute if score $ench_lifesteal ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_lifesteal ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_lucky ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/lucky
execute if score $ench_lucky ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"lucky",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.lucky", fallback: "Lucky", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_lucky ca.lexica_var matches 1.. run scoreboard players set $attr_combat_luck ca.lexica_var 1
execute if score $ench_lucky ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_lucky ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_precision ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/precision
execute if score $ench_precision ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"precision",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.precision", fallback: "Precision", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_precision ca.lexica_var matches 1.. run scoreboard players set $attr_ranged_damage ca.lexica_var 1
execute if score $ench_precision ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_precision ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_resonance ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/resonance
execute if score $ench_resonance ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"resonance",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.resonance", fallback: "Resonance", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_resonance ca.lexica_var matches 1.. run scoreboard players set $attr_aoe_damage ca.lexica_var 1
execute if score $ench_resonance ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_resonance ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_reverb ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/reverb
execute if score $ench_reverb ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"reverb",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.reverb", fallback: "Reverb", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_reverb ca.lexica_var matches 1.. run scoreboard players set $attr_chaining_hit_amount ca.lexica_var 1
execute if score $ench_reverb ca.lexica_var matches 1.. run scoreboard players set $attr_chaining_hit_chance ca.lexica_var 1
execute if score $ench_reverb ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_reverb ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_technique ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/technique
execute if score $ench_technique ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"technique",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.technique", fallback: "Technique", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_technique ca.lexica_var matches 1.. run scoreboard players set $attr_lucky_hit_chance ca.lexica_var 1
execute if score $ench_technique ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_technique ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_traveling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:vanilla/traveling
execute if score $ench_traveling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"traveling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.traveling", fallback: "Traveling", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_traveling ca.lexica_var matches 1.. run scoreboard players set $attr_step_height ca.lexica_var 1
execute if score $ench_traveling ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_traveling ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_vitality ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:vanilla/vitality
execute if score $ench_vitality ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"vitality",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.vitality", fallback: "Vitality", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_vitality ca.lexica_var matches 1.. run scoreboard players set $attr_max_health ca.lexica_var 1
execute if score $ench_vitality ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_vitality ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_windborn ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_attributes:custom/windborn
execute if score $ench_windborn ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"windborn",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.windborn", fallback: "Windborn", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_windborn ca.lexica_var matches 1.. run scoreboard players set $attr_air_dash_count ca.lexica_var 1
execute if score $ench_windborn ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_windborn ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_bracing ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:kill/bracing
execute if score $ench_bracing ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"bracing",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.bracing", fallback: "Bracing", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_bracing ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_bracing ca.lexica_var matches 1.. run scoreboard players set $keyword_lethal ca.lexica_var 1
execute if score $ench_bracing ca.lexica_var matches 1.. run scoreboard players set $has_status ca.lexica_var 1
execute if score $ench_bracing ca.lexica_var matches 1.. run scoreboard players set $status_barricade ca.lexica_var 1
execute if score $ench_bracing ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_evasion ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:passive/evasion
execute if score $ench_evasion ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"evasion",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.evasion", fallback: "Evasion", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_evasion ca.lexica_var matches 1.. run scoreboard players set $has_status ca.lexica_var 1
execute if score $ench_evasion ca.lexica_var matches 1.. run scoreboard players set $status_evasion ca.lexica_var 1
execute if score $ench_evasion ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_evasion ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_hastiness ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:kill/hastiness
execute if score $ench_hastiness ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"hastiness",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.hastiness", fallback: "Hastiness", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_hastiness ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_hastiness ca.lexica_var matches 1.. run scoreboard players set $keyword_lethal ca.lexica_var 1
execute if score $ench_hastiness ca.lexica_var matches 1.. run scoreboard players set $attr_attack_speed ca.lexica_var 1
execute if score $ench_hastiness ca.lexica_var matches 1.. run scoreboard players set $attr_mining_efficiency ca.lexica_var 1
execute if score $ench_hastiness ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_lifeblood ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:kill/lifeblood
execute if score $ench_lifeblood ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"lifeblood",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.lifeblood", fallback: "Lifeblood", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_lifeblood ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_lifeblood ca.lexica_var matches 1.. run scoreboard players set $keyword_lethal ca.lexica_var 1
execute if score $ench_lifeblood ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_mightiness ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:kill/mightiness
execute if score $ench_mightiness ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"mightiness",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.mightiness", fallback: "Mightiness", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_mightiness ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_mightiness ca.lexica_var matches 1.. run scoreboard players set $keyword_lethal ca.lexica_var 1
execute if score $ench_mightiness ca.lexica_var matches 1.. run scoreboard players set $attr_attack_damage ca.lexica_var 1
execute if score $ench_mightiness ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_nullifying ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:passive/nullifying
execute if score $ench_nullifying ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"nullifying",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.nullifying", fallback: "Nullifying", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_nullifying ca.lexica_var matches 1.. run scoreboard players set $has_status ca.lexica_var 1
execute if score $ench_nullifying ca.lexica_var matches 1.. run scoreboard players set $status_nullify ca.lexica_var 1
execute if score $ench_nullifying ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1

execute store result score $ench_regeneration ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:passive/regeneration
execute if score $ench_regeneration ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"regeneration",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.regeneration", fallback: "Regeneration", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_regeneration ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_regeneration ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_sapper ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:kill/sapper
execute if score $ench_sapper ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"sapper",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.sapper", fallback: "Sapper", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_sapper ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_sapper ca.lexica_var matches 1.. run scoreboard players set $keyword_lethal ca.lexica_var 1
execute if score $ench_sapper ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_shielding ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:passive/shielding
execute if score $ench_shielding ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"shielding",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.shielding", fallback: "Shielding", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_shielding ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_shielding ca.lexica_var matches 1.. run scoreboard players set $keyword_damaged ca.lexica_var 1
execute if score $ench_shielding ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_stealthiness ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:kill/stealthiness
execute if score $ench_stealthiness ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"stealthiness",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.stealthiness", fallback: "Stealthiness", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_stealthiness ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_stealthiness ca.lexica_var matches 1.. run scoreboard players set $keyword_lethal ca.lexica_var 1
execute if score $ench_stealthiness ca.lexica_var matches 1.. run scoreboard players set $has_status ca.lexica_var 1
execute if score $ench_stealthiness ca.lexica_var matches 1.. run scoreboard players set $status_stealth ca.lexica_var 1

execute store result score $ench_swiftness ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:kill/swiftness
execute if score $ench_swiftness ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"swiftness",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.swiftness", fallback: "Swiftness", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_swiftness ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_swiftness ca.lexica_var matches 1.. run scoreboard players set $keyword_lethal ca.lexica_var 1
execute if score $ench_swiftness ca.lexica_var matches 1.. run scoreboard players set $attr_speed ca.lexica_var 1
execute if score $ench_swiftness ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_decontaminate ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:passive/decontaminate
execute if score $ench_decontaminate ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"decontaminate",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.decontaminate", fallback: "Decontaminate", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_decontaminate ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_decontaminate ca.lexica_var matches 1.. run scoreboard players set $has_status ca.lexica_var 1
execute if score $ench_decontaminate ca.lexica_var matches 1.. run scoreboard players set $status_cleansed ca.lexica_var 1
execute if score $ench_decontaminate ca.lexica_var matches 1.. run scoreboard players set $keyword_negative_status ca.lexica_var 1
execute if score $ench_decontaminate ca.lexica_var matches 1.. run scoreboard players set $keyword_random ca.lexica_var 1
execute if score $ench_decontaminate ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1


execute store result score $ench_adrenaline ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/adrenaline
execute if score $ench_adrenaline ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"adrenaline",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.adrenaline", fallback: "Adrenaline", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_adrenaline ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_adrenaline ca.lexica_var matches 1.. run scoreboard players set $keyword_attacked ca.lexica_var 1
execute if score $ench_adrenaline ca.lexica_var matches 1.. run scoreboard players set $attr_speed ca.lexica_var 1

execute store result score $ench_bulwark ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/bulwark
execute if score $ench_bulwark ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"bulwark",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.bulwark", fallback: "Bulwark", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_bulwark ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_bulwark ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1

execute store result score $ench_courageous ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/courageous
execute if score $ench_courageous ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"courageous",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.courageous", fallback: "Courageous", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_courageous ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_courageous ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1

execute store result score $ench_diversion ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/diversion
execute if score $ench_diversion ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"diversion",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.diversion", fallback: "Diversion", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_diversion ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_diversion ca.lexica_var matches 1.. run scoreboard players set $keyword_attacked ca.lexica_var 1
execute if score $ench_diversion ca.lexica_var matches 1.. run scoreboard players set $keyword_random ca.lexica_var 1
execute if score $ench_diversion ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_ethereal ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/ethereal
execute if score $ench_ethereal ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"ethereal",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.ethereal", fallback: "Ethereal", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_ethereal ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_ethereal ca.lexica_var matches 1.. run scoreboard players set $keyword_attacked ca.lexica_var 1

execute store result score $ench_frenzy ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/frenzy
execute if score $ench_frenzy ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"frenzy",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.frenzy", fallback: "Frenzy", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_frenzy ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_frenzy ca.lexica_var matches 1.. run scoreboard players set $keyword_attacked ca.lexica_var 1
execute if score $ench_frenzy ca.lexica_var matches 1.. run scoreboard players set $attr_attack_damage ca.lexica_var 1

execute store result score $ench_hardened ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/hardened
execute if score $ench_hardened ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"hardened",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.hardened", fallback: "Hardened", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_hardened ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_hardened ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_inertia ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/inertia
execute if score $ench_inertia ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"inertia",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.inertia", fallback: "Inertia", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_inertia ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_inertia ca.lexica_var matches 1.. run scoreboard players set $keyword_energized ca.lexica_var 1

execute store result score $ench_poise ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/poise
execute if score $ench_poise ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"poise",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.poise", fallback: "Poise", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_poise ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_poise ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_sidestep ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/sidestep
execute if score $ench_sidestep ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"sidestep",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.sidestep", fallback: "Sidestep", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_sidestep ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_sidestep ca.lexica_var matches 1.. run scoreboard players set $keyword_attacked ca.lexica_var 1
execute if score $ench_sidestep ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_steadfast ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/steadfast
execute if score $ench_steadfast ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"steadfast",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.steadfast", fallback: "Steadfast", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_steadfast ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_steadfast ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_tenacity ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/tenacity
execute if score $ench_tenacity ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"tenacity",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.tenacity", fallback: "Tenacity", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_tenacity ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_steadfast ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1

execute store result score $ench_unseen ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/unseen
execute if score $ench_unseen ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"unseen",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.unseen", fallback: "Unseen", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_unseen ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_unseen ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_aberration ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/aberration
execute if score $ench_aberration ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"aberration",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.aberration", fallback: "Aberration", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_aberration ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_aberration ca.lexica_var matches 1.. run scoreboard players set $keyword_lethal ca.lexica_var 1
execute if score $ench_aberration ca.lexica_var matches 1.. run scoreboard players set $keyword_dynamic ca.lexica_var 1
execute if score $ench_aberration ca.lexica_var matches 1.. run scoreboard players set $keyword_random ca.lexica_var 1
execute if score $ench_aberration ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_deadeye ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/deadeye
execute if score $ench_deadeye ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"deadeye",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.deadeye", fallback: "Deadeye", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_deadeye ca.lexica_var matches 1.. run scoreboard players set $keyword_sprinting ca.lexica_var 1
execute if score $ench_deadeye ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_eruption ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/eruption
execute if score $ench_eruption ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"eruption",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.eruption", fallback: "Eruption", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_eruption ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_eruption ca.lexica_var matches 1.. run scoreboard players set $keyword_opportunist ca.lexica_var 1
execute if score $ench_eruption ca.lexica_var matches 1.. run scoreboard players set $keyword_dynamic ca.lexica_var 1
execute if score $ench_eruption ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_gravity ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/gravity
execute if score $ench_gravity ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"gravity",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.gravity", fallback: "Gravity", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_gravity ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_gravity ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_induction ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/induction
execute if score $ench_induction ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"induction",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.induction", fallback: "Induction", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_induction ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_induction ca.lexica_var matches 1.. run scoreboard players set $keyword_opportunist ca.lexica_var 1
execute if score $ench_induction ca.lexica_var matches 1.. run scoreboard players set $keyword_dynamic ca.lexica_var 1
execute if score $ench_induction ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1
execute if score $ench_induction ca.lexica_var matches 1.. run scoreboard players set $keyword_energized ca.lexica_var 1

execute store result score $ench_momentum ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/momentum
execute if score $ench_momentum ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"momentum",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.momentum", fallback: "Momentum", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_momentum ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_momentum ca.lexica_var matches 1.. run scoreboard players set $keyword_energized ca.lexica_var 1

execute store result score $ench_orbit ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/orbit
execute if score $ench_orbit ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"orbit",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.orbit", fallback: "Orbit", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_orbit ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_orbit ca.lexica_var matches 1.. run scoreboard players set $keyword_random ca.lexica_var 1
execute if score $ench_orbit ca.lexica_var matches 1.. run scoreboard players set $keyword_dynamic ca.lexica_var 1
execute if score $ench_orbit ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_quake ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/quake
execute if score $ench_quake ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"quake",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.quake", fallback: "Quake", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_quake ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_quake ca.lexica_var matches 1.. run scoreboard players set $keyword_lethal ca.lexica_var 1
execute if score $ench_quake ca.lexica_var matches 1.. run scoreboard players set $keyword_dynamic ca.lexica_var 1
execute if score $ench_quake ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_soulfire ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/soulfire
execute if score $ench_soulfire ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"soulfire",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.soulfire", fallback: "Soulfire", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_soulfire ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_soulfire ca.lexica_var matches 1.. run scoreboard players set $keyword_opportunist ca.lexica_var 1
execute if score $ench_soulfire ca.lexica_var matches 1.. run scoreboard players set $keyword_dynamic ca.lexica_var 1
execute if score $ench_soulfire ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_starfall ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/starfall
execute if score $ench_starfall ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"starfall",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.starfall", fallback: "Starfall", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_starfall ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_starfall ca.lexica_var matches 1.. run scoreboard players set $keyword_random ca.lexica_var 1
execute if score $ench_starfall ca.lexica_var matches 1.. run scoreboard players set $keyword_dynamic ca.lexica_var 1
execute if score $ench_starfall ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1

execute store result score $ench_storm ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/storm
execute if score $ench_storm ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"storm",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.storm", fallback: "Storm", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_storm ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_storm ca.lexica_var matches 1.. run scoreboard players set $keyword_dynamic ca.lexica_var 1
execute if score $ench_storm ca.lexica_var matches 1.. if score $is_tool ca.lexica_var matches 1.. run scoreboard players set $keyword_tool_usage ca.lexica_var 1
execute if score $ench_storm ca.lexica_var matches 1.. run scoreboard players set $keyword_energized ca.lexica_var 1

execute store result score $ench_surge ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/surge
execute if score $ench_surge ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"surge",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.surge", fallback: "Surge", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_surge ca.lexica_var matches 1.. run scoreboard players set $keyword_sprinting ca.lexica_var 1
execute if score $ench_surge ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_trailblazer ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/trailblazer
execute if score $ench_trailblazer ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"trailblazer",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.trailblazer", fallback: "Trailblazer", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_trailblazer ca.lexica_var matches 1.. run scoreboard players set $keyword_sprinting ca.lexica_var 1
execute if score $ench_trailblazer ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_vengeance ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/vengeance
execute if score $ench_vengeance ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"vengeance",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.vengeance", fallback: "Vengeance", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_vengeance ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_vengeance ca.lexica_var matches 1.. run scoreboard players set $keyword_attacked ca.lexica_var 1

execute store result score $ench_reconstruction ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/reconstruction
execute if score $ench_reconstruction ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"reconstruction",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.reconstruction", fallback: "Reconstruction", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_reconstruction ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_reconstruction ca.lexica_var matches 1.. run scoreboard players set $keyword_random ca.lexica_var 1

execute store result score $ench_soulbound ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/soulbound
execute if score $ench_soulbound ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"soulbound",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.soulbound", fallback: "Soulbound", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_soulbound ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_soulbound ca.lexica_var matches 1.. run scoreboard players set $keyword_passive ca.lexica_var 1

execute store result score $ench_spurs ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:passive/spurs
execute if score $ench_spurs ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"spurs",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.spurs", fallback: "Spurs", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_spurs ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_soulbound ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1

execute store result score $ench_drilling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:tool/drilling
execute if score $ench_drilling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"drilling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.drilling", fallback: "Drilling", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_drilling ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_drilling ca.lexica_var matches 1.. run scoreboard players set $keyword_random ca.lexica_var 1
execute if score $ench_drilling ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1

execute store result score $ench_excavator ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:tool/excavator
execute if score $ench_excavator ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"excavator",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.excavator", fallback: "Excavator", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_excavator ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_excavator ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_lightborn ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:tool/lightborn
execute if score $ench_lightborn ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"lightborn",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.lightborn", fallback: "Lightborn", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_lightborn ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_lightborn ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_multitool ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:tool/multitool
execute if score $ench_multitool ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"multitool",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.multitool", fallback: "Multitool", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_multitool ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_multitool ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_chaotic ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/general/chaotic
execute if score $ench_chaotic ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"chaotic",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.chaotic", fallback: "Chaotic", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_chaotic ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_chaotic ca.lexica_var matches 1.. run scoreboard players set $keyword_random ca.lexica_var 1
execute if score $ench_chaotic ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1

execute store result score $ench_concentration ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/general/concentration
execute if score $ench_concentration ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"concentration",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.concentration", fallback: "Concentration", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_concentration ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_concentration ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_duelist ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/general/duelist
execute if score $ench_duelist ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"duelist",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.duelist", fallback: "Duelist", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_duelist ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_duelist ca.lexica_var matches 1.. run scoreboard players set $keyword_humanoid ca.lexica_var 1
execute if score $ench_duelist ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_hunter ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/general/hunter
execute if score $ench_hunter ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"hunter",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.hunter", fallback: "Hunter", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_hunter ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_hunter ca.lexica_var matches 1.. run scoreboard players set $keyword_monstrous ca.lexica_var 1
execute if score $ench_hunter ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_first_strike ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/general/first_strike
execute if score $ench_first_strike ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"first_strike",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.first_strike", fallback: "First Strike", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_first_strike ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_first_strike ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_focus ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/general/focus
execute if score $ench_focus ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"focus",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.focus", fallback: "Focus", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_focus ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_focus ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1

execute store result score $ench_follow_up ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/general/follow_up
execute if score $ench_follow_up ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"follow_up",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.follow_up", fallback: "Follow Up", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_follow_up ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_follow_up ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_hex_eater ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/general/hex_eater
execute if score $ench_hex_eater ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"hex_eater",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.hex_eater", fallback: "Hex Eater", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_hex_eater ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_hex_eater ca.lexica_var matches 1.. run scoreboard players set $keyword_negative_status ca.lexica_var 1
execute if score $ench_hex_eater ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_leverage ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/melee/leverage
execute if score $ench_leverage ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"leverage",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.leverage", fallback: "Leverage", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_leverage ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_leverage ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_rushdown ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/melee/rushdown
execute if score $ench_rushdown ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"rushdown",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.rushdown", fallback: "Rushdown", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_rushdown ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_rushdown ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_overcharge ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/ranged/overcharge
execute if score $ench_overcharge ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"overcharge",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.overcharge", fallback: "Overcharge", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_overcharge ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_overcharge ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_point_blank ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/ranged/point_blank
execute if score $ench_point_blank ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"point_blank",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.point_blank", fallback: "Point Blank", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_point_blank ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_point_blank ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_sharpshot ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/damage/ranged/sharpshot
execute if score $ench_sharpshot ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"sharpshot",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.sharpshot", fallback: "Sharpshot", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_sharpshot ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_sharpshot ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_explosive ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/general/explosive
execute if score $ench_explosive ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"explosive",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.explosive", fallback: "Explosive", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_explosive ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_explosive ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_explosive ca.lexica_var matches 1.. run scoreboard players set $keyword_dynamic ca.lexica_var 1

execute store result score $ench_pulling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
execute if score $ench_pulling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"pulling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.pulling", fallback: "Pulling", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_pulling ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_pulling ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1

execute store result score $ench_recoil ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/general/recoil
execute if score $ench_recoil ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"recoil",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.recoil", fallback: "Recoil", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_recoil ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_recoil ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_recoil ca.lexica_var matches 1.. run scoreboard players set $keyword_self_movement ca.lexica_var 1

execute store result score $ench_repulsion ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/general/repulsion
execute if score $ench_repulsion ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"repulsion",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.repulsion", fallback: "Repulsion", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_repulsion ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_repulsion ca.lexica_var matches 1.. run scoreboard players set $keyword_channeled ca.lexica_var 1

execute store result score $ench_ambushing ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/melee/ambushing
execute if score $ench_ambushing ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"ambushing",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.ambushing", fallback: "Ambushing", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_ambushing ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_ambushing ca.lexica_var matches 1.. run scoreboard players set $keyword_channeled ca.lexica_var 1
execute if score $ench_ambushing ca.lexica_var matches 1.. run scoreboard players set $keyword_self_movement ca.lexica_var 1
execute if score $ench_ambushing ca.lexica_var matches 1.. run scoreboard players set $keyword_cooldown ca.lexica_var 1

execute store result score $ench_cleaving ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/melee/cleaving
execute if score $ench_cleaving ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"cleaving",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.cleaving", fallback: "Cleaving", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_cleaving ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_cleaving ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_lunging ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/melee/lunging
execute if score $ench_lunging ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"lunging",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.lunging", fallback: "Lunging", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_lunging ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_lunging ca.lexica_var matches 1.. run scoreboard players set $keyword_self_movement ca.lexica_var 1
execute if score $ench_lunging ca.lexica_var matches 1.. run scoreboard players set $keyword_cooldown ca.lexica_var 1

execute store result score $ench_quick_strike ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/melee/quick_strike
execute if score $ench_quick_strike ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"quick_strike",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.quick_strike", fallback: "Quick Strike", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_quick_strike ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_quick_strike ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_quick_strike ca.lexica_var matches 1.. run scoreboard players set $keyword_cooldown ca.lexica_var 1

execute store result score $ench_riposte ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/melee/riposte
execute if score $ench_riposte ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"riposte",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.riposte", fallback: "Riposte", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_riposte ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_riposte ca.lexica_var matches 1.. run scoreboard players set $keyword_channeled ca.lexica_var 1
execute if score $ench_riposte ca.lexica_var matches 1.. run scoreboard players set $keyword_dynamic ca.lexica_var 1
execute if score $ench_riposte ca.lexica_var matches 1.. run scoreboard players set $keyword_cooldown ca.lexica_var 1

execute store result score $ench_slamming ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/melee/slamming
execute if score $ench_slamming ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"slamming",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.slamming", fallback: "Slamming", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_slamming ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_slamming ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_throwable ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/melee/throwable
execute if score $ench_throwable ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"throwable",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.throwable", fallback: "Throwable", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_throwable ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_throwable ca.lexica_var matches 1.. run scoreboard players set $keyword_channeled ca.lexica_var 1
execute if score $ench_throwable ca.lexica_var matches 1.. run scoreboard players set $keyword_cooldown ca.lexica_var 1

execute store result score $ench_thrusting ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/melee/thrusting
execute if score $ench_thrusting ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"thrusting",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.thrusting", fallback: "Thrusting", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_thrusting ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_thrusting ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_barbed ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/ranged/barbed
execute if score $ench_barbed ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"barbed",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.barbed", fallback: "Barbed", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_barbed ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_barbed ca.lexica_var matches 1.. run scoreboard players set $keyword_splintering ca.lexica_var 1
execute if score $ench_barbed ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1

execute store result score $ench_barrage ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/ranged/barrage
execute if score $ench_barrage ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"barrage",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.barrage", fallback: "Barrage", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_barrage ca.lexica_var matches 1.. run scoreboard players set $keyword_passive ca.lexica_var 1
execute if score $ench_barrage ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_collapse ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/ranged/collapse
execute if score $ench_collapse ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"collapse",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.collapse", fallback: "Collapse", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_collapse ca.lexica_var matches 1.. run scoreboard players set $keyword_passive ca.lexica_var 1
execute if score $ench_collapse ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_correction ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/ranged/correction
execute if score $ench_correction ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"correction",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.correction", fallback: "Correction", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_correction ca.lexica_var matches 1.. run scoreboard players set $keyword_passive ca.lexica_var 1
execute if score $ench_correction ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_fleetfoot ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/ranged/fleetfoot
execute if score $ench_fleetfoot ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"fleetfoot",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.fleetfoot", fallback: "Fleetfoot", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_fleetfoot ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_fleetfoot ca.lexica_var matches 1.. run scoreboard players set $keyword_channeled ca.lexica_var 1
execute if score $ench_fleetfoot ca.lexica_var matches 1.. run scoreboard players set $keyword_self_movement ca.lexica_var 1

execute store result score $ench_grappling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/ranged/grappling
execute if score $ench_grappling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"grappling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.grappling", fallback: "Grappling", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_grappling ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_grappling ca.lexica_var matches 1.. run scoreboard players set $keyword_self_movement ca.lexica_var 1
execute if score $ench_grappling ca.lexica_var matches 1.. run scoreboard players set $keyword_passive ca.lexica_var 1

execute store result score $ench_ricochet ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/ranged/ricochet
execute if score $ench_ricochet ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"ricochet",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.ricochet", fallback: "Ricochet", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_ricochet ca.lexica_var matches 1.. run scoreboard players set $keyword_passive ca.lexica_var 1
execute if score $ench_ricochet ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_ripper ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/ranged/ripper
execute if score $ench_ripper ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"ripper",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.ripper", fallback: "Ripper", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_ripper ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_ripper ca.lexica_var matches 1.. run scoreboard players set $keyword_splintering ca.lexica_var 1
execute if score $ench_ripper ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1

execute store result score $ench_shrapnel ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/ranged/shrapnel
execute if score $ench_shrapnel ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"shrapnel",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.shrapnel", fallback: "Shrapnel", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_shrapnel ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_shrapnel ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_auto_charge ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/other/auto_charge
execute if score $ench_auto_charge ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"auto_charge",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.auto_charge", fallback: "Auto Charge", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_auto_charge ca.lexica_var matches 1.. run scoreboard players set $keyword_passive ca.lexica_var 1
execute if score $ench_auto_charge ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_repeating ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating
execute if score $is_crossbow ca.lexica_var matches 1.. if score $ench_repeating ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"repeating_crossbow",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.repeating", fallback: "Repeating", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute unless score $is_crossbow ca.lexica_var matches 1.. if score $ench_repeating ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"repeating_consumable",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.repeating", fallback: "Repeating", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_repeating ca.lexica_var matches 1.. run scoreboard players set $keyword_passive ca.lexica_var 1
execute if score $ench_repeating ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_scavenger ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:weapon/unique/other/scavenger
execute if score $ench_scavenger ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"scavenger",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.scavenger", fallback: "Scavenger", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
execute if score $ench_scavenger ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_scavenger ca.lexica_var matches 1.. run scoreboard players set $keyword_lethal ca.lexica_var 1


execute store result score $ench_annulling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_statuses:curse/annulling
execute if score $ench_annulling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"annulling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.annulling", fallback: "Annulling", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_annulling ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_annulling ca.lexica_var matches 1.. run scoreboard players set $has_status ca.lexica_var 1
execute if score $ench_annulling ca.lexica_var matches 1.. run scoreboard players set $status_purged ca.lexica_var 1
execute if score $ench_annulling ca.lexica_var matches 1.. run scoreboard players set $keyword_random ca.lexica_var 1
execute if score $ench_annulling ca.lexica_var matches 1.. run scoreboard players set $keyword_positive_status ca.lexica_var 1

execute store result score $ench_clumsiness ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/clumsiness
execute if score $ench_clumsiness ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"clumsiness",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.clumsiness", fallback: "Clumsiness", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_clumsiness ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_clumsiness ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_corruption ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/corruption
execute if score $ench_corruption ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"corruption",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.corruption", fallback: "Corruption", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_corruption ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_corruption ca.lexica_var matches 1.. run scoreboard players set $keyword_locked ca.lexica_var 1

execute store result score $ench_crippling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/crippling
execute if score $ench_crippling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"crippling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.crippling", fallback: "Crippling", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_crippling ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_crippling ca.lexica_var matches 1.. run scoreboard players set $keyword_locked ca.lexica_var 1

execute store result score $ench_crumbling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/crumbling
execute if score $ench_crumbling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"crumbling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.crumbling", fallback: "Crumbling", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_crumbling ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_crumbling ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_encumbering ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/encumbering
execute if score $ench_encumbering ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"encumbering",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.encumbering", fallback: "Encumbering", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_encumbering ca.lexica_var matches 1.. run scoreboard players set $keyword_weapon ca.lexica_var 1
execute if score $ench_encumbering ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_gluttony ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/gluttony
execute if score $ench_gluttony ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"gluttony",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.gluttony", fallback: "Gluttony", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_gluttony ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_gluttony ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_haunting ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/haunting
execute if score $ench_haunting ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"haunting",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.haunting", fallback: "Haunting", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_haunting ca.lexica_var matches 1.. run scoreboard players set $keyword_passive ca.lexica_var 1
execute if score $ench_haunting ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_heaviness ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/heaviness
execute if score $ench_heaviness ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"heaviness",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.heaviness", fallback: "Heaviness", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_heaviness ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_heaviness ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_instability ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/instability
execute if score $ench_instability ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"instability",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.instability", fallback: "Instability", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_instability ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_instability ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_jamming ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/jamming
execute if score $ench_jamming ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"jamming",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.jamming", fallback: "Jamming", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_jamming ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_jamming ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_melee_fragility ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/melee_fragility
execute if score $ench_melee_fragility ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"melee_fragility",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.melee_fragility", fallback: "Melee Fragility", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_melee_fragility ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_melee_fragility ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_pride ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/pride
execute if score $ench_pride ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"pride",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.pride", fallback: "Pride", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_pride ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_pride ca.lexica_var matches 1.. run scoreboard players set $keyword_locked ca.lexica_var 1

execute store result score $ench_projectile_fragility ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/projectile_fragility
execute if score $ench_projectile_fragility ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"projectile_fragility",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.projectile_fragility", fallback: "Projectile Fragility", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_projectile_fragility ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_projectile_fragility ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_regret ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/regret
execute if score $ench_regret ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"regret",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.regret", fallback: "Regret", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_regret ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_regret ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_shattering ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/shattering
execute if score $ench_shattering ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"shattering",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.shattering", fallback: "Shattering", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_shattering ca.lexica_var matches 1.. run scoreboard players set $keyword_equipped ca.lexica_var 1
execute if score $ench_shattering ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1

execute store result score $ench_two_handed ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.cartographer_custom_enchantments:curse/two_handed
execute if score $ench_two_handed ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment_curse",id:"two_handed",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.two_handed", fallback: "Two Handed", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:16733525}
execute if score $ench_two_handed ca.lexica_var matches 1.. run scoreboard players set $has_keyword ca.lexica_var 1
execute if score $ench_two_handed ca.lexica_var matches 1.. run scoreboard players set $keyword_locked ca.lexica_var 1



execute store result score $ench_aqua_affinity ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:aqua_affinity
execute if score $ench_aqua_affinity ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"aqua_affinity",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.aqua_affinity", fallback: "Aqua Affinity", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_bane_of_arthropods ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:bane_of_arthropods
execute if score $ench_bane_of_arthropods ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"bane_of_arthropods",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.bane_of_arthropods", fallback: "Bane of Arthropods", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_blast_protection ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:blast_protection
execute if score $ench_blast_protection ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"blast_protection",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.blast_protection", fallback: "Blast Protection", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_breach ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:breach
execute if score $ench_breach ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"breach",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.breach", fallback: "Breach", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_channeling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:channeling
execute if score $ench_channeling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"channeling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.channeling", fallback: "Channeling", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_binding_curse ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:binding_curse
execute if score $ench_binding_curse ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"binding_curse",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.binding", fallback: "Binding", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_vanishing_curse ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:vanishing_curse
execute if score $ench_vanishing_curse ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"vanishing_curse",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.cartographer.vanishing", fallback: "Vanishing", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_depth_strider ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:depth_strider
execute if score $ench_depth_strider ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"depth_strider",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.depth_strider", fallback: "Depth Strider", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_density ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:density
execute if score $ench_density ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"density",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.density", fallback: "Density", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_efficiency ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:efficiency
execute if score $ench_efficiency ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"efficiency",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.efficiency", fallback: "Efficiency", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_feather_falling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:feather_falling
execute if score $ench_feather_falling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"feather_falling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.feather_falling", fallback: "Feather Falling", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_fire_aspect ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:fire_aspect
execute if score $ench_fire_aspect ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"fire_aspect",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.fire_aspect", fallback: "Fire Aspect", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_fire_protection ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:fire_protection
execute if score $ench_fire_protection ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"fire_protection",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.fire_protection", fallback: "Fire Protection", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_flame ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:flame
execute if score $ench_flame ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"flame",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.flame", fallback: "Flame", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_fortune ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:fortune
execute if score $ench_fortune ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"fortune",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.fortune", fallback: "Fortune", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_frost_walker ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:frost_walker
execute if score $ench_frost_walker ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"frost_walker",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.frost_walker", fallback: "Frost Walker", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_impaling ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:impaling
execute if score $ench_impaling ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"impaling",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.impaling", fallback: "Impaling", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_infinity ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:infinity
execute if score $ench_infinity ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"infinity",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.infinity", fallback: "Infinity", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_knockback ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:knockback
execute if score $ench_knockback ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"knockback",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.knockback", fallback: "Knockback", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_looting ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:looting
execute if score $ench_looting ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"looting",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.looting", fallback: "Looting", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_loyalty ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:loyalty
execute if score $ench_loyalty ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"loyalty",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.loyalty", fallback: "Loyalty", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_luck_of_the_sea ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:luck_of_the_sea
execute if score $ench_luck_of_the_sea ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"luck_of_the_sea",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.luck_of_the_sea", fallback: "Luck of the Sea", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_lure ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:lure
execute if score $ench_lure ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"lure",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.lure", fallback: "Lure", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_mending ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:mending
execute if score $ench_mending ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"mending",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.mending", fallback: "Mending", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_multishot ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:multishot
execute if score $ench_multishot ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"multishot",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.multishot", fallback: "Multishot", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_piercing ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:piercing
execute if score $ench_piercing ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"piercing",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.piercing", fallback: "Piercing", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_power ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:power
execute if score $ench_power ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"power",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.power", fallback: "Power", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_projectile_protection ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:projectile_protection
execute if score $ench_projectile_protection ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"projectile_protection",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.projectile_protection", fallback: "Projectile Protection", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_protection ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:protection
execute if score $ench_protection ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"protection",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.protection", fallback: "Protection", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_punch ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:punch
execute if score $ench_punch ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"punch",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.punch", fallback: "Punch", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_quick_charge ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:quick_charge
execute if score $ench_quick_charge ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"quick_charge",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.quick_charge", fallback: "Quick Charge", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_respiration ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:respiration
execute if score $ench_respiration ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"respiration",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.respiration", fallback: "Respiration", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_riptide ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:riptide
execute if score $ench_riptide ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"riptide",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.riptide", fallback: "Riptide", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_sharpness ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:sharpness
execute if score $ench_sharpness ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"sharpness",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.sharpness", fallback: "Sharpness", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_silk_touch ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:silk_touch
execute if score $ench_silk_touch ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"silk_touch",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.silk_touch", fallback: "Silk Touch", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_smite ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:smite
execute if score $ench_smite ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"smite",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.smite", fallback: "Smite", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_soul_speed ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:soul_speed
execute if score $ench_soul_speed ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"soul_speed",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.soul_speed", fallback: "Soul Speed", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_sweeping_edge ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:sweeping_edge
execute if score $ench_sweeping_edge ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"sweeping_edge",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.sweeping_edge", fallback: "Sweeping Edge", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_swift_sneak ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:swift_sneak
execute if score $ench_swift_sneak ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"swift_sneak",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.swift_sneak", fallback: "Swift Sneak", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_thorns ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:thorns
execute if score $ench_thorns ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"thorns",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.thorns", fallback: "Thorns", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_unbreaking ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:unbreaking
execute if score $ench_unbreaking ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"unbreaking",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.unbreaking", fallback: "Unbreaking", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}

execute store result score $ench_wind_burst ca.lexica_var run data get storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments.minecraft:wind_burst
execute if score $ench_wind_burst ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/add_page {category:"enchantment",id:"wind_burst",name:[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "enchantment.minecraft.wind_burst", fallback: "Wind Burst", bold: true, underlined: false, italic: false, color: "#47EDD1"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],color:4713937}
