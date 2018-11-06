function run(msg,axe)
if axe[1]:lower() == 'falaxe' or axe[1]:lower()== 'hh' or axe[1]:lower()=='فال'then
local json =  dofile('/root/MaTaDoR/libs/JSON.lua')
local url = https.request('http://api.novateamco.ir/falhafez/')
local jdat = json:decode(url)
if jdat then
local text = "🦋🌹فال حافظ 🌹🦋\n\n"..jdat.result.."\n\n🌹شماره غزل : "..jdat.code..""..EndPm
tdbot.sendMessage(msg.to.id , 0 , 1 , text , 1 , 'md')
end
end
end

return {
patterns = {
"^([Hh]h)$",
"^([Ff]alaxe)$",
"^(فال)$",
},
run = run,
}