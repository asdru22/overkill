scoreboard players set $health_regen ovk.data 2

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"ovk:health_regen"}].Amount

scoreboard players operation $health_regen ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"ovk:health_regen"}].Amount

scoreboard players operation $health_regen ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"ovk:health_regen"}].Amount

scoreboard players operation $health_regen ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"ovk:health_regen"}].Amount

scoreboard players operation $health_regen ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"ovk:health_regen"}].Amount

scoreboard players operation $health_regen ovk.data += $temp ovk.dat

scoreboard players operation $perc ovk.data = @s ovk.s.max_health
scoreboard players operation $perc ovk.data *= $health_regen ovk.data
scoreboard players operation $perc ovk.data /= 100 ovk.data

scoreboard players operation @s ovk.s.current_health += $perc ovk.data
function ovk:entity/player/stats/health/calc_percentage