import json
from aux_functions import *

prefix = 6530000

def get_tag(id,item,lang):
    lang["item.ovk."+id] =item["core"]["name"]                  
    tag = "Unbreakable:1b,HideFlags:126"
    tag += ",CustomModelData:"+str(prefix+item["core"]["custom_model_data"])
    tag+= ",ovk:{id:\""+id+"\",Type:"+get_type(item["core"]["type"].capitalize())
    tag += ",Rarity:\""+get_rarity(item["core"]["rarity"])[0].capitalize()+"\""
    if "other" in item and "additional_ovk_tag" in item["other"]:
        tag += ","+ item["other"]["additional_ovk_tag"]
    tag += "}"
    if("attributes" in item):
        attribute_list = get_attributes(item["attributes"],item["core"]["type"])
        tag += ",AttributeModifiers:["+attr_to_tag(attribute_list)+"]"
    if "other" in item and "additional_mc_tag" in item["other"]:
        tag += ","+ item["other"]["additional_mc_tag"]
##################### DISPLAY #############
    tag +=",display:{Name:'"+json.dumps({"translate":"item.ovk."+id+"","italic":"false","color":""+get_rarity(item["core"]["rarity"])[1]+""}).replace("\"false\"","false")+"'"
    if "color" in item["core"]: tag += ",color:"+str(item["core"]["color"])
    tag += ",Lore:["
    
    ### TYPE
    temp = t.lower()
    if(temp== "melee" or temp == "magic" or temp == "ranged"): temp = "weapon"
    if(temp=="helmet" or temp=="chestplate" or temp== "leggings" or temp == "boots"): temp = "armor"
    tag += "'"+ json.dumps({"translate":"item.ovk.type."+temp+"","italic":"false","color":"dark_gray"}).replace("\"false\"","false") +"',"
    
    ### LORE
    if("other" in item and "lore" in item["other"]):
        count = 0
        tag += "'\"\"',"
        for line in item["other"]["lore"]:
            tag += "'"+ json.dumps({"translate":"item.ovk."+id+".lore."+str(count)+"","italic":"false","color":"gray"}).replace("\"false\"","false") +"',"
            lang["item.ovk."+id+".lore."+str(count)] =line
            count +=1
            
    #### SET BONUS
    if("other" in item and "set_bonus" in item["other"]): 
        count = 0
        tag += "'\"\"',"
        tag += "'"+ json.dumps({"translate":"item.ovk."+id+".set_bonus","italic":"false","color":"dark_green","underlined":"true"}).replace("\"false\"","false") +"',"
        for line in item["other"]["set_bonus"]:
            tag += "'"+ json.dumps({"translate":"item.ovk.id.set_bonus."+str(count)+"","italic":"false","color":"gray"}).replace("\"false\"","false") +"',"
            lang["item.ovk"+id+"set_bonus."+str(count)] = line
            count +=1
    ### RARITY
    tag += "'\"\"',"
    rarity = item["core"]["rarity"]
    tag += "'{\"translate\":\"item.ovk.rarity\",\"color\":\"gold\",\"italic\":false,\"with\":["
    if rarity == 0: tag +="{\"text\":\"★☆☆☆☆\"}]}'"
    elif rarity == 1: tag += "{\"text\":\"★★☆☆☆\"}]}'"
    elif rarity == 2: tag += "{\"text\":\"★★★☆☆\"}]}'"
    elif rarity == 3: tag += "{\"text\":\"★★★★☆\"}]}'"
    elif rarity == 4: tag += "{\"text\":\"★★★★★\"}]}'"
    elif rarity == 5: tag += "{\"text\":\"★★★★★★\"}]}'"
    tag += ","
    
    ### ATTRIBUTES
    if("attributes" in item): tag += attr_to_lore(attribute_list,t)
    #### PACK
    tag +="'\"\"','{\"translate\":\"pack.ovk\",\"color\":\"#de0253\"}'"
    tag += "]"
    ###
    tag += "}"
    return tag

def get_attributes(attributes,type):
    attributelist = []
#### vanilla
    if "vanilla" in attributes:
        if attributes["vanilla"][0] != 0:  attributelist.append( get_attribute(type,"vanilla","attack_damage",attributes["other"][0]))
        if attributes["vanilla"][1] != 0:  attributelist.append( get_attribute(type,"vanilla","armor",attributes["vanilla"][1]))
#### melee
    if "melee" in attributes:
        if attributes["melee"][0] != 0:  attributelist.append( get_attribute(type,"ovk","melee_damage",attributes["melee"][0]))
        if attributes["melee"][1] != 0:  attributelist.append( get_attribute(type,"vanilla","attack_speed",attributes["melee"][1]))
        if attributes["melee"][2] != 0:  attributelist.append( get_attribute(type,"ovk","melee_defense",attributes["melee"][2]))
#### ranged
    if "ranged" in attributes:
        if(type=="Ranged" and attributes["ranged"][0] != 0): attributelist.append( get_attribute(type,"ovk","damage",attributes["ranged"][0]))
        elif attributes["ranged"][0] != 0:  attributelist.append( get_attribute(type,"ovk","ranged_damage",attributes["ranged"][0]))
        if attributes["ranged"][1] != 0:  attributelist.append( get_attribute(type,"ovk","ranged_defense",attributes["ranged"][1]))
        if attributes["ranged"][2] != 0:  attributelist.append( get_attribute(type,"ovk","fire_speed",attributes["ranged"][2]))
        if attributes["ranged"][3] != 0:  attributelist.append( get_attribute(type,"ovk","bullet_spread",attributes["ranged"][3]))
        if attributes["ranged"][4] != 0:  attributelist.append( get_attribute(type,"ovk","ammo_conservation",attributes["ranged"][4]))
#### magic 
    if "magic" in attributes:
        if attributes["magic"][0] != 0:  attributelist.append( get_attribute(type,"ovk","magic_damage",attributes["magic"][0]))
        if attributes["magic"][1] != 0:  attributelist.append( get_attribute(type,"ovk","magic_defense",attributes["magic"][1]))
        if attributes["magic"][2] != 0:  attributelist.append( get_attribute(type,"ovk","max_mana",attributes["magic"][2]))
        if attributes["magic"][3] != 0:  attributelist.append( get_attribute(type,"ovk","mana_regen",attributes["magic"][3]))
        if attributes["magic"][4] != 0:  attributelist.append( get_attribute(type,"ovk","mana_cost",attributes["magic"][4]))
#### turret
    if "turret" in attributes:
        if attributes["turret"][0] != 0:  attributelist.append( get_attribute(type,"ovk","turret_damage",attributes["turret"][0]))
        if attributes["turret"][1] != 0:  attributelist.append( get_attribute(type,"ovk","build_speed",attributes["turret"][1]))
        if attributes["turret"][2] != 0:  attributelist.append( get_attribute(type,"ovk","lifetime",attributes["turret"][2]))
#### health
    if "health" in attributes:
        if attributes["health"][0] != 0:  attributelist.append( get_attribute(type,"ovk","max_health",attributes["health"][0]))
        if attributes["health"][1] != 0:  attributelist.append( get_attribute(type,"ovk","health_regen",attributes["health"][1]))
#### other
    if "other" in attributes:
        if attributes["other"][0] != 0:  attributelist.append( get_attribute(type,"vanilla","movement_speed",attributes["other"][0]))
        if attributes["other"][1] != 0:  attributelist.append( get_attribute(type,"vanilla","armor_toughness",attributes["other"][1]))
        if attributes["other"][2] != 0:  attributelist.append( get_attribute(type,"vanilla","knockback_resistance",attributes["other"][2]))
    return attributelist
            
def get_attribute(type,src,name,amount):
    type = t
    display_name = name
    if(type=="Melee" and name == "melee_damage"): name = "damage"
    if(type=="Ranged" and name == "ranged_damage"): name = "damage"
    if(type=="Magic" and name == "magic_damage"): name = "damage"
    if(type=="Turret" and name == "turret_damage"): name = "damage"
    if(src=="vanilla"):
        if(type=="Melee" or type == "Ranged" or type == "Magic"): disp = ("'"+(json.dumps({"translate":"attribute.ovk.default","color":"dark_green","italic":"false","with":[str(amount),{"translate":"attribute.name.generic."+display_name}]}))+"',")
        else:disp = ("'"+(json.dumps({"translate":"attribute.ovk.default_armor","color":"blue","italic":"false","with":[get_plus(amount),{"translate":"attribute.name.generic."+display_name}]}))+"',")
        if(name=="attack_speed" and type=="Melee"): attr="{AttributeName:\"generic."+name+"\",Name:\"generic."+name+"\",Amount:"+str((amount-4))+",Operation:0,UUID:"+intarray()+",Slot:"+get_slot(type)+"},"
        else: attr="{AttributeName:\"generic."+name+"\",Name:\"generic."+name+"\",Amount:"+str(amount)+",Operation:0,UUID:"+intarray()+",Slot:"+get_slot(type)+"},"
    else:
        attr="{AttributeName:\"ovk:"+name+"\",Name:'{\"translate\":\"attribute.ovk."+display_name+"\"}',Amount:"+str(amount)+",Operation:0,UUID:"+intarray()+",Slot:"+get_slot(type)+"},"
        if(type=="Melee" or type == "Ranged" or type == "Magic"): disp = ("'"+(json.dumps({"translate":"attribute.ovk.default","color":"dark_green","italic":"false","with":[str(amount),{"translate":"attribute.ovk."+display_name}]}))+"',")
        else: disp = ("'"+(json.dumps({"translate":"attribute.ovk.default_armor","color":"blue","italic":"false","with":[get_plus(amount),{"translate":"attribute.ovk."+display_name}]}))+"',")
    return (attr,disp.replace("\"false\"","false"))

def get_plus(amount):
    if(amount>0): return "+"+str(amount)
    else: return str(amount)

def get_slot(type):
    if(type=="Melee" or type == "Ranged" or type == "Magic"): return "\"mainhand\""
    elif type == "Helmet": return "\"head\""
    elif type == "Chestplate": return "\"chest\""
    elif type == "Leggings": return "\"legs\""
    elif type == "Boots": return "\"feet\""
    elif type == "Shield": return "\"offhand\""


def get_rarity(rarity):
    if rarity == 0: return ("Common","white")
    elif rarity == 1: return ("Uncommon","green")
    elif rarity == 2: return ("Rare","aqua")
    elif rarity == 3: return ("Epic","light_purple")
    elif rarity == 4: return ("Legendary","red")
    elif rarity == 5: return ("Mythical","rainbow")

    
def get_type(type):
    global t
    
    if(type=="Helmet" or type=="Chestplate" or type== "Leggings" or type == "Boots"):
        t = type
        type = "Armor"
        return "\"Armor\",ArmorType:"+"\"" +t+"\""
    else:
        t = type
        return "\"" +type +"\""