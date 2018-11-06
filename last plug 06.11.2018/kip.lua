function AxE(msg, axe)
if matches[1]:lower() == 'logo' or matches[1]== 'لوگو' and matches[2] then
local text1 = axe[2]
local text2 = axe[3]
local text3 = axe[4]
local url = "http://www.keepcalmstudio.com/-/p.php?t=%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A"..text1.."%0D%0A"..text2.."%0D%0A"..text3.."&bc=E31F17&tc=FFFFFF&cc=FFFFFF&uc=true&ts=true&ff=PNG&w=500&ps=sq"
-- print(url)
local file = download_to_file(url,'keep.webp')
tdbot.sendDocument(msg.to.id, file,nil, nil, msg.id, 0, 1, nil, dl_cb, nil)
end
end

return {
  description = "تبدیل متن به لوگو",
  usage = {
    "/keep calm font text: ساخت لوگو",
  },
  patterns = {
   "^([Ll][Oo][Gg][Oo]) (.+) (.+) (.+)$",
   "^(لوگو) (.+) (.+) (.+)$",
  },
  run = AxE
}
--|---#### BY ####---|--
--|---  \\\  ///  ---|--
--|---   \\\///   ---|--
--|--AxE  \\//  AxE--|--
--|--AxE  //\\  AxE--|--
--|---   ///\\\   ---|--
--|---  ///  \\\  ---|--
--|---####    ####---|--