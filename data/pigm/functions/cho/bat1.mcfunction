# choの16マス以内 @mob

# 自身の大きさを取得
execute store result storage pigm:data temp int 1 run attribute @s generic.scale get

# それを引数にしてbat2に進む
function pigm:cho/bat2 with storage pigm:data



