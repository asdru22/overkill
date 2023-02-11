scoreboard players set $health ovk.data 200

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"ovk:max_health"}].Amount 10 

scoreboard players operation $health ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"ovk:max_health"}].Amount 10 

scoreboard players operation $health ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"ovk:max_health"}].Amount 10 

scoreboard players operation $health ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"ovk:max_health"}].Amount 10 

scoreboard players operation $health ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"ovk:max_health"}].Amount 10 

scoreboard players operation $health ovk.data += $temp ovk.dat

scoreboard players operation @s ovk.s.max_health = $health ovk.data
function ovk:entity/player/stats/health/calc_percentage