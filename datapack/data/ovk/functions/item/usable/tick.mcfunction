execute if score @s ovk.using_item = @s ovk.prev_using_item run function ovk:item/usable/release
scoreboard players operation @s ovk.prev_using_item = @s ovk.using_item