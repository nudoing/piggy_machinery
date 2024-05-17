
# 棒が使用された @player
execute as @a[scores={pigm.usefungus=1..}] at @s run function pigm:item/usefungus
execute as @a[scores={pigm.usecarrot=1..}] at @s run function pigm:item/usecarrot



# ジャンプしたぶたが着地した @pig
execute as @e[type=pig,tag=jumppig,nbt={OnGround:true}] at @s run function pigm:pig/jump/land


# 赤キノコを投げた @player
execute as @a[scores={pigm.dropkinoko=1..}] at @s run function pigm:item/dropkinoko

# 投げられた超きのこが着地した @item
execute as @e[type=item,tag=cho_drop,nbt={OnGround:true}] at @s run function pigm:cho/land

# ぶたがダッシュ中 @pig
execute as @a on vehicle if entity @s[type=pig,tag=dashpig] at @s run function pigm:pig/dash/tick


# 土がドロップしたらときにすごい掘れるやつ持ってたら大穴開ける（雑判定）
execute as @a if data entity @s SelectedItem.components.minecraft:custom_data.pigm{type:sugoihoreru} at @s as @e[type=item,distance=..64] if data entity @s {PickupDelay:10s,Age:0s,Item:{id:"minecraft:dirt"}} at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace

