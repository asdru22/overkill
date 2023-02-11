scoreboard players set $mana ovk.data 200

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"ovk:max_mana"}].Amount 10 

scoreboard players operation $mana ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"ovk:max_mana"}].Amount 10 

scoreboard players operation $mana ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"ovk:max_mana"}].Amount 10 

scoreboard players operation $mana ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"ovk:max_mana"}].Amount 10 

scoreboard players operation $mana ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"ovk:max_mana"}].Amount 10 

scoreboard players operation $mana ovk.data += $temp ovk.dat

scoreboard players operation @s ovk.s.max_mana = $mana ovk.data

execute if score @s ovk.s.current_mana > @s ovk.s.max_mana run scoreboard players operation @s ovk.s.current_mana = @s ovk.s.max_mana