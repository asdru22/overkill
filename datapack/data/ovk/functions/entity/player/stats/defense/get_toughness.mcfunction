scoreboard players set $toughness ovk.data 0

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"generic.armor_toughness"}].Amount 10 

scoreboard players operation $toughness ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"generic.armor_toughness"}].Amount 10 

scoreboard players operation $toughness ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"generic.armor_toughness"}].Amount 10 

scoreboard players operation $toughness ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"generic.armor_toughness"}].Amount 10 

scoreboard players operation $toughness ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"generic.armor_toughness"}].Amount 10 

scoreboard players operation $toughness ovk.data += $temp ovk.data