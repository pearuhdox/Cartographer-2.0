# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2025 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

# Add the version of the module to the list of available modules
data modify storage bs:data load.modules append value {module:"bs.math",version:"3.0.2",enabled:0b}
scoreboard players add $bs.math.major load.status 0
scoreboard players add $bs.math.minor load.status 0
scoreboard players add $bs.math.patch load.status 0

# Count the number of major versions
execute unless score $bs.math.major load.status matches 3 run scoreboard players add #bs.math.major_versions load.status 1

# Set the latest available version for the module
execute unless score $bs.math.major load.status matches ..3 run return 0
execute if score $bs.math.major load.status matches 3 unless score $bs.math.minor load.status matches ..0 run return 0
execute if score $bs.math.major load.status matches 3 if score $bs.math.minor load.status matches 0 unless score $bs.math.patch load.status matches ..2 run return 0
scoreboard players set $bs.math.major load.status 3
scoreboard players set $bs.math.minor load.status 0
scoreboard players set $bs.math.patch load.status 2
