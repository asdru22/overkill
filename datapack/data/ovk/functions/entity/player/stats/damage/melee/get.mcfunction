execute if data storage ovk:storage root.temp.attack{Compatible:1b} if data storage ovk:storage root.temp.equipment.Mainhand.tag.ovk.Type run function ovk:entity/player/stats/damage/melee/mainhand

execute if data storage ovk:storage root.temp.attack{Compatible:1b} unless data storage ovk:storage root.temp.equipment.Mainhand.tag.ovk.Type run function ovk:entity/player/stats/damage/melee/mainhand_vanilla

execute store result score $damage ovk.data run scoreboard players operation $max_damage ovk.data /= 10 ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"ovk:melee_damage"}].Amount 10 
scoreboard players operation $damage ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"ovk:melee_damage"}].Amount 10 
scoreboard players operation $damage ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"ovk:melee_damage"}].Amount 10 
scoreboard players operation $damage ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"ovk:melee_damage"}].Amount 10 
scoreboard players operation $damage ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"ovk:melee_damage"}].Amount 10 
scoreboard players operation $damage ovk.data += $temp ovk.data