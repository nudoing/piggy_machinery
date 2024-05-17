# $(temp) に自身の大きさアリ

$particle minecraft:explosion ~ ~ ~ $(temp) 0 $(temp) 0.2 10

playsound minecraft:entity.generic.explode block @a ~ ~ ~ 2 1 0.5

$fill ~-$(temp) ~-$(temp) ~-$(temp) ~$(temp) ~$(temp) ~$(temp) air

