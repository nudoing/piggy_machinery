# ジャンプしたブタが着地した @pig

# ぶたの大きさを取得
execute store result storage pigm:data temp int 1 run attribute @s generic.scale get

# 着地処理
function pigm:pig/jump/landdos with storage pigm:data

tag @s remove jumppig

