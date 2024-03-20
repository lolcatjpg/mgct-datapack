# mark item frame with correct action
execute unless data entity @s {CustomNameVisible:1b} run tag @s add src-mgct+armor_stand-custom_name_visible-enable
execute if data entity @s {CustomNameVisible:1b} run tag @s add src-mgct+armor_stand-custom_name_visible-disable

# modify nbt tag based on enable/disable tag
execute if data entity @s {Tags: ["src-mgct+armor_stand-custom_name_visible-enable"]} run data modify entity @s CustomNameVisible set value 1
execute if data entity @s {Tags: ["src-mgct+armor_stand-custom_name_visible-disable"]} run data modify entity @s CustomNameVisible set value 0

# reset enable/disable tag
tag @s remove src-mgct+armor_stand-custom_name_visible-enable
tag @s remove src-mgct+armor_stand-custom_name_visible-disable

# feedback
tellraw @a[distance=..10] {"text": "🔧 CustomNameVisible toggled", "color": "green"}
playsound minecraft:entity.item_frame.remove_item block @a[distance=..5] ~ ~ ~ 1 1.3