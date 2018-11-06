function BarCode(msg, axe)
if axe[1]:lower() == 'bar' or axe[1]== 'barcode' and axe[2] then
local barcode = axe[2]
local url = "https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl="..barcode
-- print(url)
local file = download_to_file(url,'barcode.jpg')
tdbot.sendPhoto(msg.to.id, msg.id, file, 0, {}, 0, 0, "@AxEproBoTs", 0, 0, 1, nil, dl_cb, nil)
end
end

return {
  description = "create your barcode",
  usage = {
    "creating a barcode : ساخت بارکد",
  },
  patterns = {
   "^([Bb][Aa][Rr]) (.+)$",
   "^([Bb][Aa][Rr][Cc][Oo][Dd][Ee]) (.+)$",
  },
  run = BarCode
}

