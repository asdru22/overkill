### GENERATE INT ARRAY
def intarray():
    return "[I;"+str(randint())+","+str(randint())+","+str(randint())+","+str(randint())+"]"

### GENERATE RANDOM INT
import random
def randint():
    return random.randint(-2147483648, 2147483647)

### AttributeList to Attribute tag
def attr_to_tag(list):
    r = ""
    for attr in list:
        r+=attr[0]
    return r

def attr_to_lore(list,type):
    r = "'"
    if(type=="Melee" or type=="Ranged" or type=="Magic"):
            r+=('{"translate":"item.modifiers.mainhand","italic":false,"color":"gray"}')
    elif(type=="Helmet"):
            r+=('{"translate":"item.modifiers.head","italic":false,"color":"gray"}')
    elif(type=="Chestplate"):
            r+=('{"translate":"item.modifiers.chest","italic":false,"color":"gray"}')
    elif(type=="Leggings"):
            r+=('{"translate":"item.modifiers.legs","italic":false,"color":"gray"}')
    elif(type=="Boots"):
            r+=('{"translate":"item.modifiers.feet","italic":false,"color":"gray"}')
    elif(type=="Shield"):
            r+=('{"translate":"item.modifiers.offhand","italic":false,"color":"gray"}')
    r+="',"
    for attr in list:
        r+=attr[1]
    return r
### check if file exists
import os.path
def file_exists(file):
    return os.path.exists(file)