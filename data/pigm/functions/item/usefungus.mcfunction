# きのこ棒使った @player

execute if data entity @s SelectedItem.components.minecraft:custom_data.pigm{type:jumppig} run function pigm:pig/jump/start


# 使用フラグをリセット
scoreboard players reset @s pigm.usefungus
