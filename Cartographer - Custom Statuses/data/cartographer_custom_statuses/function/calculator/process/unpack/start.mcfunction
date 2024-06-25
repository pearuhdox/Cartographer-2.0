data modify storage cartographer:custom_statuses calculator.unpacked set value []

execute if data storage cartographer:custom_statuses calculator.fetch[0] run function cartographer_custom_statuses:calculator/process/unpack/array