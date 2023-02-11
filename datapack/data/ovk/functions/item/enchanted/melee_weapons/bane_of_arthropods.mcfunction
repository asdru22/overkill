execute store result score $temp ovk.data run data get storage ovk:storage root.temp.equipment.Mainhand.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl
scoreboard players operation $temp ovk.data *= 250 ovk.data
scoreboard players operation $max_damage ovk.data += $temp ovk.data