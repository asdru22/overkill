execute store result score $mana ovk.data run data get storage ovk:storage root.temp.equipment.Mainhand.tag.AttributeModifiers[{AttributeName:"ovk:mana_cost"}].Amount 10 

scoreboard players set $perc ovk.data 0

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"ovk:mana_cost"}].Amount 10 

scoreboard players operation $perc ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"ovk:mana_cost"}].Amount 10 

scoreboard players operation $perc ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"ovk:mana_cost"}].Amount 10 

scoreboard players operation $perc ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"ovk:mana_cost"}].Amount 10 

scoreboard players operation $perc ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"ovk:mana_cost"}].Amount 10 

scoreboard players operation $perc ovk.data += $temp ovk.dat

scoreboard players operation $aux ovk.data = $mana ovk.data 
scoreboard players operation $aux ovk.data *= $perc ovk.data
scoreboard players operation $aux ovk.data /= 1000 ovk.data

scoreboard players operation $mana ovk.data += $aux ovk.data
scoreboard players operation $mana ovk.data /= 10 ovk.data