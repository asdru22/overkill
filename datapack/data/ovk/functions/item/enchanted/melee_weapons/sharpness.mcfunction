# 0.5 * max(0, level - 1) + 1.0

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Mainhand.tag.Enchantments[{id:"minecraft:sharpness"}].lvl 100
scoreboard players remove $temp ovk.data 100
scoreboard players operation $temp ovk.data /= 2 ovk.data
scoreboard players add $temp ovk.data 100
scoreboard players operation $max_damage ovk.data += $temp ovk.data