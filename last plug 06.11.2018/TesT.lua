function statusAXE(msg,axe)
if not is_sudo(msg) then return end
local status = io.popen("free -h"):read('*all')
return status
end
return {
patterns = {
    "^[!/](ram)$",
    "^(Ram)$",
  },
  run = statusAXE,
  moderated = true
}
-- ("uptime"):read('*all')
-- ("sh ./cmd.sh en"):read('*all')
-- tdbot.sendMessage(msg.to.id,0,1,status,1,'md')
