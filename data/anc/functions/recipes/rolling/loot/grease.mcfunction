function anc:handle/count_reduce
summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",tag:{CustomModelData:11140029,id:'anc:grease',display:{Name:'{"italic":false,"translate":"anc.item.grease.name"}'}},Count:1b},Tags:["AncOutput"]}
execute as @e[type=item,nbt={Item:{tag:{id:"anc:grease"}}},tag=AncOutput,tag=!AncOut,sort=nearest] run function anc:handle/count_set
