execute store result score $damage ovk.data run data get storage ovk:storage root.temp.attack.Charge 100
execute if data storage ovk:storage root.temp.attack{Compatible:1b} store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Mainhand.tag.AttributeModifiers[{AttributeName:"ovk:damage"}].Amount 10
scoreboard players operation $damage ovk.data *= $temp ovk.data
scoreboard players operation $damage ovk.data /= 10 ovk.data