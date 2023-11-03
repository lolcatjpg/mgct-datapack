function src-mgct:selector/check_range

execute as @e[type=item, nbt={Item: {tag: {selector:1}}}, distance=..5] run tellraw @a[distance=..5] {"text": "🗑 Selector removed", "color": "aqua"}
function src-mgct:selector/kill
