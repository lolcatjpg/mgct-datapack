tellraw @p [{"text": "\n======== mgct menu ========"}]

# entity-specific commands
execute if entity @e[type=#mgct:group/item_frame, distance=..5, tag=src-mgct+selected] run function mgct:menu/item_frame

# general commands
function mgct:menu/general

tellraw @p [{"text": "\n[🔄 update menu entries]", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function menu-mgct"}}]

#execute unless entity @e[tag=src-mgct+selected, distance=..5] run tellraw @p [{"text": "\nnothing selected within 5 block range...", "color": "red", "italic": true}]
tellraw @p [{"text": "==========================\n"}]
