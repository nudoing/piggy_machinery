# @pig
#effect give @s minecraft:resistance 3 100 true
attribute @s generic.safe_fall_distance base set 20
data merge entity @s {Motion:[0.0,1.0,0.0],OnGround:false}
tag @s add jumppig
