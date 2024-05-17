# きのこを投げた @player

# 超きのこだったら超ドロップタグをつける
execute as @e[type=item,sort=nearest,limit=1] if data entity @s Item.components.minecraft:custom_data.pigm{type:cho_kinoko} at @s run tag @s add cho_drop


# 使用フラグをリセット
scoreboard players reset @s pigm.dropkinoko
