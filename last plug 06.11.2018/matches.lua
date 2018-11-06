function run(msg, axe)
local StartPm = {"↫ ","⇜ ","⌯ ","℘ ","↜ ","⇋ "}
local M_START = StartPm[math.random(#StartPm)]
if axe[1] and axe[2] and axe[3] then
-- local AxE = axe[2]
-- return axe[3]
return tdbot.sendMessage(msg.to.id , 0 , 1 , M_START, 'html')
end
end

return {
patterns = {
-- "^(.*) (.*) (.*)$",
},
run =run
}
