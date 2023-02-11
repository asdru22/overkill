execute store result score $max_damage ovk.data run data get storage ovk:storage root.temp.equipment.Mainhand.tag.AttributeModifiers[{AttributeName:"ovk:damage"}].Amount 100

execute store result score $charge ovk.data run data get storage ovk:storage root.temp.attack.Charge 100
scoreboard players operation $max_damage ovk.data *= $charge ovk.data
scoreboard players operation $max_damage ovk.data /= 100 ovk.data

function ovk:entity/combat/player/extra_melee_damage