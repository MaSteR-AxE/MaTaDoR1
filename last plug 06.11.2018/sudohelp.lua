function run(msg, matches)
if matches[1]:lower() == 'sudohelp' and is_sudo(msg) then
local sudohelp =[[
getting [ ` ]
send >>> pp1
🌹 🌹 🌹
getting [   ] but not work
send >>> pp2
 
]]
return tdbot.sendMessage(msg.to.id ,0 ,1 , sudohelp, 1, 'html')
end
if matches[1]:lower() == 'pp1' and is_sudo(msg) then
local pp1 = '`'
return tdbot.sendMessage(msg.to.id ,0 ,1 , pp1, 1, 'html')
end
if matches[1]:lower() == 'pp2' and is_sudo(msg) then
local pp2 = ' '
return tdbot.sendMessage(msg.to.id ,0 ,1 , pp2, 1, 'html')
end
end

return {
patterns = {
"^([Ss]udohelp)$",
"^([Pp]p1)$",
"^([Pp]p2)$",
},
run = run ,
}