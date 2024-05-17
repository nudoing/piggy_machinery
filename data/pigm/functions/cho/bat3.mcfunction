# $(temp) に自身の大きさ+1アリ

# おっきくする
$attribute @s generic.scale base set $(temp)
playsound minecraft:entity.player.levelup block @a ~ ~ ~ 3 1 0.5
$particle minecraft:happy_villager ~ ~ ~ $(temp) 0 $(temp) 1 50
# きのこけす
kill @e[type=item,tag=cho_drop,distance=..16,nbt={OnGround:true},limit=1]

