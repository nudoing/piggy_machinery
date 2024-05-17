
# 現在ゲーム時間を取得
execute store result score #temp pigm.dashtimer run time query gametime


# タイマーの対象になるぶたの速度をもとにもどす
execute as @e[type=pig] if score @s pigm.dashtimer = #temp pigm.dashtimer at @s run function pigm:pig/dash/stopdos

# タイマーの対象となるプレイヤーの速度ももとに戻す
execute as @a if score @s pigm.dashtimer = #temp pigm.dashtimer at @s run attribute @s generic.movement_speed base set 0.1