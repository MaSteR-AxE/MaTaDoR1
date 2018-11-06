
local function run (msg,matches)
if matches[1]:lower() == 'queen' and matches[2] then
local text1 = matches[2]
local url = "http://www.iloveheartstudio.com/-/p.php?t=%EE%BB%AA%0D%0A"..text1.."&bc=FF00A2&tc=FFFFFF&hc=FFF700&f=p&uc=true&ts=true&ff=PNG&w=500&ps=sq"
print(url)
local file = download_to_file(url,"queen.webp")
tdbot.sendDocument(msg.to.id, file,nil, nil, msg.id, 0, 1, nil, dl_cb, nil)
end
end

return{ 
patterns = { 
"^(queen) (.*)$"
},
run=run
}