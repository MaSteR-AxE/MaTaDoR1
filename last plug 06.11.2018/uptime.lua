function run(msg,axe)
if not is_sudo(msg) then
return 
end
text = io.popen("uptime"):read('*all')
  return text
end
return {
  patterns = {
    "^[!/](uptime)$",
    "^(uptime)$",
    "^(Uptime)$",
	"^(آپتایم)$",
	"^(اپتایم)$",
	"^(عاپتایم)$",
  },
  run = run,
  moderated = true
}
-- ## -- By-AxE -- ## --
-- uptime = io.popen("sh ./cmd.sh en"):read('*all')
