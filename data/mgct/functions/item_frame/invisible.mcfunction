function src-mgct:selector/check_range

execute as @e[type=minecraft:item, nbt={Item: {tag: {selected:1}}}, distance=..5] at @s positioned ~ ~-.5 ~ as @e[limit=1, sort=nearest] if entity @s[type=item_frame] run function src-mgct:item_frame/toggle_invisible
execute as @e[type=minecraft:item, nbt={Item: {tag: {selected:1}}}, distance=..5] at @s positioned ~ ~-.5 ~ as @e[limit=1, sort=nearest] if entity @s[type=glow_item_frame] run function src-mgct:item_frame/toggle_invisible

# feedback if wrong entity
execute as @e[type=minecraft:item, nbt={Item: {tag: {selected:1}}}, distance=..5] at @s positioned ~ ~-.5 ~ as @e[limit=1, sort=nearest] if entity @s[type=!item_frame, type=!glow_item_frame] run tellraw @a[distance=..10] {"text": "⚠ Selected entity is not an item frame", "color": "red"}
function src-mgct:selector/kill
