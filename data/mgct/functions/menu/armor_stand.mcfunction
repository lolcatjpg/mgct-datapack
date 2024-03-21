tellraw @p [{"text": "\nfunctions for §oarmor stand§r:", "color": "gray"}]
# rotation
tellraw @p [{"text": "   "}, {"text": " [⏩ rotate clockwise] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/rotate/cw"}}, {"text": " [⏩ rotate counterclockwise] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/rotate/ccw"}}]
# straighten arms
tellraw @p [{"text": "   "}, {"text": " [⏩ straighten arms] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/straighten_arms"}}]

# invisibility, marker
tellraw @p [{"text": "   "}, {"text": " [🔧 toggle invisible] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_invisible"}}, {"text": " [🔧 toggle marker] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_marker"}}]
# nogravity, small
tellraw @p [{"text": "   "}, {"text": " [🔧 toggle no gravity] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_no_gravity"}}, {"text": " [🔧 toggle small] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_small"}}]
# arms, baseplate
tellraw @p [{"text": "   "}, {"text": " [🔧 toggle arms] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_arms"}}, {"text": " [🔧 toggle base plate] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_base_plate"}}]

# template: move
tellraw @p [{"text": "   "}, {"text": " [📝 move] ", "color": "blue", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/command_templates/move"}, "hoverEvent": {"action": "show_text", "contents": "§oCommand template§r"}}]
