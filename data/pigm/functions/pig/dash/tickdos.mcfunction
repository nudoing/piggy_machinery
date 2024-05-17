# $(temp) に自身の大きさアリ

$execute store success score #temp pigm.temp run fill ~-$(temp) ~ ~-$(temp) ~$(temp) ~30 ~$(temp) air

$execute if score #temp pigm.temp matches 1 run particle minecraft:explosion ~ ~ ~ $(temp) $(temp) $(temp) 0.2 $(temp)0

execute if score #temp pigm.temp matches 1 run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 2 1 0.5
