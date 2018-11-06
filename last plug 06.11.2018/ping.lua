--
local function AssassinsTeaM (msg ,matches)

if matches[1]:lower () == 'admin' or matches[1] == 'ادمین' then
local AXE = "✭ ✭ ✭ ✭ ✭ ✭ ✭ ✭\nbot manager :\nfull name : MaSteR AxE\nusername : @Ma5t3R_AxE\n🦋AxE🌹"
return tdbot.sendMessage(msg.to.id, 0,1, AXE,1,'html')
end
if matches[1]:lower () == 'bot' and is_sudo(msg) or matches[1] == 'ربات' and is_sudo(msg) then
return " What'sUp =/ ? "
 end
if matches[1]:lower () == 'bot' and is_mod(msg) or matches[1] == 'ربات' and is_mod(msg) then
return " `جانم؟ :D` "
 end
if matches[1]:lower () == 'bot' or matches[1] == 'ربات' then
return ' `چیه؟ :/` '
end
end
return {
patterns = {
     "^([Aa][Dd][Mm][Ii][Nn])$",
	 "^([Bb][Oo][Tt])",
"^(ادمین)$",
"^(ربات)$",
},
run =AssassinsTeaM,
}

