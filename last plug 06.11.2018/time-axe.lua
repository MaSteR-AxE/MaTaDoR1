local function run(msg,axe)
if axe[1]:lower() == 'zz' then
local url = http.request('http://probot.000webhostapp.com/api/time.php/')
local jdat = json:decode(url)
return "zaman"
end
end

return =
patterns = {
"^([Zz]z)$",
},
run=run,
}
-- by AxE
