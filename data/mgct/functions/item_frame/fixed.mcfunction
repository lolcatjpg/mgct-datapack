function src-mgct:selector/check_range

execute as @e[tag=src-mgct+selected] if entity @s[type=item_frame] run function src-mgct:item_frame/toggle_fixed
execute as @e[tag=src-mgct+selected] if entity @s[type=glow_item_frame] run function src-mgct:item_frame/toggle_fixed

# feedback if wrong entity
execute as @e[tag=src-mgct+selected] if entity @s[type=!item_frame, type=!glow_item_frame] run tellraw @a[distance=..5] {"text": "⚠ Selected entity is not an item frame", "color": "red"}
execute as @e[tag=src-mgct+selected] if entity @s[type=!item_frame, type=!glow_item_frame] run playsound minecraft:entity.item_frame.break block @a[distance=..5] ~ ~ ~ 1 1
function src-mgct:selector/kill
