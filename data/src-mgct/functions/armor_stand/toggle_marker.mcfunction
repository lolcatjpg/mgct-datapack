# mark item frame with correct action
execute unless data entity @s {Marker:1b} run tag @s add src-mgct+armor_stand-marker-enable
execute if data entity @s {Marker:1b} run tag @s add src-mgct+armor_stand-marker-disable

# modify nbt tag based on enable/disable tag
execute if data entity @s {Tags: ["src-mgct+armor_stand-marker-enable"]} run data modify entity @s Marker set value 1
execute if data entity @s {Tags: ["src-mgct+armor_stand-marker-disable"]} run data modify entity @s Marker set value 0

# reset enable/disable tag
tag @s remove src-mgct+armor_stand-marker-enable
tag @s remove src-mgct+armor_stand-marker-disable

# feedback
tellraw @a[distance=..10] {"text": "🔧 Marker toggled", "color": "green"}
playsound minecraft:entity.item_frame.remove_item block @a[distance=..5] ~ ~ ~ 1 1.3