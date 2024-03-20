tellraw @p [{"text": "\nfunctions for §oarmor stand§r:", "color": "gray"}]
# rotation
tellraw @p [{"text": "   "}, {"text": " [⏩ rotate clockwise] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/rotate/cw"}}, {"text": " [⏩ rotate counterclockwise] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/rotate/ccw"}}]

# invisibility, nogravity
tellraw @p [{"text": "   "}, {"text": " [🔧 toggle invisible] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_invisible"}}, {"text": " [🔧 toggle no gravity] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_no_gravity"}}]
# base plate, small
tellraw @p [{"text": "   "}, {"text": " [🔧 toggle base plate] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_base_plate"}}, {"text": " [🔧 toggle small] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_small"}}]
# showarms
tellraw @p [{"text": "   "}, {"text": " [🔧 toggle arms] ", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/function mgct:armor_stand/toggle_arms"}}]