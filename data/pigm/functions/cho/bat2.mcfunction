# $(temp) に自身の大きさアリ

# 自分の大きさ+1を計算しておく
execute store result score #temp pigm.temp run attribute @s generic.scale get
execute store result storage pigm:data temp int 1 run scoreboard players add #temp pigm.temp 1

# 大きくなりすぎていたら終了
execute if score #temp pigm.temp matches 17 run return fail

# サイズも考慮して自分の近くにきのこがあるようならbat3にすすむ
$execute if entity @e[type=item,distance=..$(temp),tag=cho_drop] run function pigm:cho/bat3 with storage pigm:data


