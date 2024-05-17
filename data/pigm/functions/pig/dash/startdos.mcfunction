# ダッシュ棒を使われたぶたがよびだしてるファンクション

# パワーアップするよ
attribute @s generic.movement_speed base set 0.8
attribute @s generic.safe_fall_distance base set 20

# タグをつけるよ
tag @s add dashpig

# 10秒後にダッシュ終了するよ
execute store result score @s pigm.dashtimer run schedule function pigm:pig/dash/stop 10s



# 上に乗ってる人も速度上げるよ（視点が早い感じになるよ）
execute on passengers run attribute @s generic.movement_speed base set 0.2

# プレイヤーもブタと同時に終わる処理を同時にやるよ
scoreboard players operation #temp pigm.temp = @s pigm.dashtimer
execute on passengers run scoreboard players operation @s pigm.dashtimer = #temp pigm.temp

