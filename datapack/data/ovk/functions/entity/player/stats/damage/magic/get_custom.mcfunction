execute store result score $damage ovk.data run data get storage ovk:storage root.temp.equipment.Mainhand.tag.AttributeModifiers[{AttributeName:"ovk:damage"}].Amount 10 

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Helmet.tag.AttributeModifiers[{AttributeName:"ovk:magic_damage"}].Amount 10 
scoreboard players operation $damage ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Chestplate.tag.AttributeModifiers[{AttributeName:"ovk:magic_damage"}].Amount 10 
scoreboard players operation $damage ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Leggings.tag.AttributeModifiers[{AttributeName:"ovk:magic_damage"}].Amount 10 
scoreboard players operation $damage ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Boots.tag.AttributeModifiers[{AttributeName:"ovk:magic_damage"}].Amount 10 
scoreboard players operation $damage ovk.data += $temp ovk.data

execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Shield.tag.AttributeModifiers[{AttributeName:"ovk:magic_damage"}].Amount 10 
scoreboard players operation $damage ovk.data += $temp ovk.data

execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"Magic Damage: "},{"score":{"name":"$damage","objective":"ovk.data"}}]