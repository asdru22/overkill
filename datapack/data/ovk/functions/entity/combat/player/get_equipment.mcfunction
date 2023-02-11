data modify storage ovk:storage root.temp.equipment set value {Mainhand:{},Offhand:{},Helmet:{},Chestplate:{},Leggings:{},Boots:{}}

data modify storage ovk:storage root.temp.equipment.Mainhand set from entity @s SelectedItem
data modify storage ovk:storage root.temp.equipment.Offhand set from entity @s Inventory[{Slot:-106b}]
data modify storage ovk:storage root.temp.equipment.Helmet set from entity @s Inventory[{Slot:103b}]
data modify storage ovk:storage root.temp.equipment.Chestplate set from entity @s Inventory[{Slot:102b}]
data modify storage ovk:storage root.temp.equipment.Leggings set from entity @s Inventory[{Slot:101b}]
data modify storage ovk:storage root.temp.equipment.Boots set from entity @s Inventory[{Slot:100b}]