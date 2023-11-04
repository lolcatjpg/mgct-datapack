tellraw @a[distance=..30] {"text": "🗑 Selection cleared because no one was in range", "color": "red"}
execute as @a[distance=..30] at @s run playsound minecraft:entity.item_frame.break block @s ~ ~ ~ 1 1
function src-mgct:selector/kill