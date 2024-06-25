data modify storage cartographer:custom_statuses calculator.unpacked append from storage cartographer:custom_statuses calculator.fetch[0][0]

data remove storage cartographer:custom_statuses calculator.fetch[0][0]

execute if data storage cartographer:custom_statuses calculator.fetch[0][0] run function cartographer_custom_statuses:calculator/process/unpack/segment