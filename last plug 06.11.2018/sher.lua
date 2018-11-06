function run(msg,org)
--####################################
local json =  dofile('/root/MaTaDoR/libs/JSON.lua')
if org[1] == 'شعر' and is_JoinChannel(msg) then
local url = http.request('http://c.ganjoor.net/beyt-json.php')
local jdat = json:decode(url)
local text = jdat.m1.."\n"..jdat.m2.."\n\n سروده شده توسط \n ——————————\n👤"..jdat.poet
tdbot.sendMessage(msg.chat_id,msg.id, 1,text, 1, 'md')
end
end

return {
patterns = {
"^(شعر)$"
},
run = run
}