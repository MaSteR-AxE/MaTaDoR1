local function run(msg, matches)
if matches[1] == 'بگو' and is_mod(msg) then
local pext = matches[2]
tdbot.sendMessage(msg.to.id,0,1, pext,1,'html')
end
end

return{ patterns= {'^(بگو) (.*)$'}, run=run}

-- end by @To0fan