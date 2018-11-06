##--by @Ma5t3R_AxE--## 
local function AxE (msg,mach)
if mach[1]:lower() == 'slm' or mach[1] == 'salam' or mach[1]:lower() =='slam' or mach[1] == 'سلام' and is_mod(msg) then
return 'salaaaam :D'
end
--########################--
if mach[1]:lower()=='hi'or mach[1]:lower()=='b'and not is_mod(msg)then
local pext=mach[2]
tdbot.sendMessage(msg.to.id,0,1, pext,1,'md')
end
--AXE--
end
--########################--
return {
patterns = {
 "^([Ss][Ll][Mm])$",
"^([Ss][Aa][Ll][Aa][Mm])$",
"^([Ss][Ll][Aa][Mm])$",
"^([Hh][Ii]) (.*)$",
"^([Gg][Uu][Yy])$",
"^(سلام)$",
"^([Bb]) (.*)$",
},
run =AxE
}
