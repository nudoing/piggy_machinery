# にんじん棒使った @player

execute if data entity @s SelectedItem.components.minecraft:custom_data.pigm{type:dashpig} run function pigm:pig/dash/start

# 使用フラグをリセット
scoreboard players reset @s pigm.usecarrot
