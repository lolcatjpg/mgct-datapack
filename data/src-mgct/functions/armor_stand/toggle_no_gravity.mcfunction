# mark item frame with correct action
execute unless data entity @s {NoGravity:1b} run tag @s add src-mgct+armor_stand-no_gravity-enable
#minecraft can't detect that an armour stand doens't have the NoGravity tag when testing for {NoGravity:0b} because the tag doens't exist when it's not enabled
execute if data entity @s {NoGravity:1b} run tag @s add src-mgct+armor_stand-no_gravity-disable

# modify fixed nbt tag based on enable/disable tag
execute if data entity @s {Tags: ["src-mgct+armor_stand-no_gravity-enable"]} run data modify entity @s NoGravity set value 1
execute if data entity @s {Tags: ["src-mgct+armor_stand-no_gravity-disable"]} run data modify entity @s NoGravity set value 0

# reset enable/disable tag
tag @s remove src-mgct+armor_stand-no_gravity-enable
tag @s remove src-mgct+armor_stand-no_gravity-disable

# feedback
tellraw @a[distance=..10] {"text": "🔧 No Gravity toggled", "color": "green"}
playsound minecraft:entity.item_frame.remove_item block @a[distance=..5] ~ ~ ~ 1 1.3