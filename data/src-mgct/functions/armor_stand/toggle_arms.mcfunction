# mark item frame with correct action
execute unless data entity @s {ShowArms:1b} run tag @s add src-mgct+armor_stand-show_arms-enable
execute if data entity @s {ShowArms:1b} run tag @s add src-mgct+armor_stand-show_arms-disable

# modify nbt tag based on enable/disable tag
execute if data entity @s {Tags: ["src-mgct+armor_stand-show_arms-enable"]} run data modify entity @s ShowArms set value 1
execute if data entity @s {Tags: ["src-mgct+armor_stand-show_arms-disable"]} run data modify entity @s ShowArms set value 0

# reset enable/disable tag
tag @s remove src-mgct+armor_stand-show_arms-enable
tag @s remove src-mgct+armor_stand-show_arms-disable

# feedback
tellraw @a[distance=..10] {"text": "🔧 Arms toggled", "color": "green"}
playsound minecraft:entity.item_frame.remove_item block @a[distance=..5] ~ ~ ~ 1 1.3