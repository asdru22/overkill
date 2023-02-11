tag @s add ovk.entity.setup

execute unless data entity @s HandItems[1].id run function ovk:entity/mob/setup_offhand

data remove storage ovk:storage root.temp.data.Stats
execute store result storage ovk:storage root.temp.data.Stats.Armor.Default int 1 run attribute @s minecraft:generic.armor get 10
execute store result storage ovk:storage root.temp.data.Stats.Toughness int 1 run attribute @s minecraft:generic.armor_toughness get 10
execute store result storage ovk:storage root.temp.data.Stats.MaxHealth int 1 run attribute @s minecraft:generic.max_health get 10
execute store result score @s ovk.s.current_health run data get entity @s Health 10

attribute @s minecraft:generic.armor base set -100
attribute @s minecraft:generic.armor_toughness base set -100
attribute @s minecraft:generic.max_health base set 100
data modify entity @s Health set value 100f

data modify entity @s HandItems[-1].tag.ovkm set from storage ovk:storage root.temp.data