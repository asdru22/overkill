data modify storage ovk:storage root.temp.item set from entity @s Inventory[{Slot:102b}]

data modify storage ovk:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"generic.max_health"}].Name set value '{"translate":"attribute.ovk.max_health"}'
data modify storage ovk:storage root.temp.item.tag.AttributeModifiers[{AttributeName:"generic.max_health"}].AttributeName set value "ovk:max_health"

item modify entity @s armor.chest ovk:copy_nbt