function src-mgct:selector/check_range

execute as @e[type=item, nbt={Item: {tag: {selector:1}}}, distance=..5] run tellraw @a[distance=..5] {"text": "🗑 Selector removed", "color": "aqua"}
execute as @e[type=item, nbt={Item: {tag: {selector:1}}}, distance=..5] run playsound minecraft:entity.item_frame.break block @a[distance=..5] ~ ~ ~ 1 1.3
function src-mgct:selector/kill
