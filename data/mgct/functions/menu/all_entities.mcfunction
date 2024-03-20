tellraw @p [{"text": "\nfunctions for all entities:", "color": "gray"}]

# kill
tellraw @p [{"text": "   "}, {"text": " [❌ kill] ", "color": "red", "clickEvent": {"action": "run_command", "value": "/function src-mgct:all_entities/kill_confirm"}}]

# template: custom nbt, run command
tellraw @p [{"text": "   "}, {"text": " [📝 set custom nbt] ", "color": "blue", "clickEvent": {"action": "run_command", "value": "/function mgct:all_entities/command_templates/set_custom_nbt"}, "hoverEvent": {"action": "show_text", "contents": "§oCommand template§r"}}, {"text": " [📝 run command] ", "color": "blue", "clickEvent": {"action": "run_command", "value": "/function mgct:all_entities/command_templates/run_command"}, "hoverEvent": {"action": "show_text", "contents": "Run command as selected entities, located at selected entities\n§oCommand template§r"}}]

