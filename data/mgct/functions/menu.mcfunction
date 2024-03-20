tellraw @p [{"text": "\n======== mgct menu ========", "color": "gray"}]

# entity-specific commands
execute if entity @e[type=#mgct:group/item_frame, distance=..5, tag=src-mgct+selected] run function mgct:menu/item_frame
execute if entity @e[type=minecraft:armor_stand, distance=..5, tag=src-mgct+selected] run function mgct:menu/armor_stand

# commands for all entities
execute if entity @e[type=!#mgct:selector_denylist, distance=..5, tag=src-mgct+selected] run function mgct:menu/all_entities

# general commands
function mgct:menu/general

tellraw @p [{"text": "\n[🔄 update menu]", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function menu-mgct"}}]

#execute unless entity @e[tag=src-mgct+selected, distance=..5] run tellraw @p [{"text": "\nnothing selected within 5 block range...", "color": "red", "italic": true}]
tellraw @p [{"text": "==========================\n", "color": "gray"}]
