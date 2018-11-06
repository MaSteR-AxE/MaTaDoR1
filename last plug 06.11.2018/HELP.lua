
--|---#### BY ####---|--
--|---  \\\  ///  ---|--
--|---   \\\///   ---|--
--|--AxE  \\//  AxE--|--
--|--AxE  //\\  AxE--|--
--|---   ///\\\   ---|--
--|---  ///  \\\  ---|--
--|---####    ####---|-- 

function tdbot.sendMessage(chat_id, reply_to_message_id, disable_notification, text, disablewebpagepreview,  parsemode)
  local input_message_content = {
    _ = 'inputMessageText',
    text = tostring(text),
    disable_web_page_preview = disablewebpagepreview,
    parse_mode = getParseMode(parsemode),
    clear_draft = 0,
    entities = nil
  }
  sendAllMessage(chat_id, reply_to_message_id, input_message_content, disable_notification, 0, nil, callback, nil)
end

chat_id = chat_id,
reply_to_message_id = msg_id,
disable_notification = 0,
from_background = true,
reply_markup = nil,

disable_web_page_preview = 1,
clear_draft = false,
--################## for download a file from web and send
-- source code :

function AxE(msg, axe)
if matches[1]:lower() == '*' or matches[1]== '*' --[[ and matches[2] ]] then
-- local url = "*"
-- local x = "*"
-- local y = "*"
-- local z = "*"
local file = download_to_file(url,'keep.webp') --[[ { [keep]or[any name...]).webp } and .webp ( can be any format for example {.gif},{.mp3},{jpg}, and...) ]]
tdbot.sendDocument(msg.to.id, file,nil, nil, msg.id, 0, 1, nil, dl_cb, nil)
--or for picture and photo's :
tdbot.sendPhoto(msg.to.id, msg.id, file, 0, {}, 0, 0, msg_caption, 0, 0, 1, nil, dl_cb, nil)
--for more format and future__cheak --> (/MaTaDoR/libs/tdbot.lua)

end
end

return {
  -- description = "تبدیل متن به لوگو",
  -- usage = {
    -- "/keep calm font text: ساخت لوگو",
  -- },
  patterns = {
   -- "^([Ll][Oo][Gg][Oo]) (.+) (.+) (.+)$",
   -- "^(لوگو) (.+) (.+) (.+)$",
  },
  run = AxE
}

--################## send document and or photo
function AxE(msg, axe)
if matches[1]:lower() == 'ff' or matches[1]== 'fff' and matches[2] then
local url = "https://assets.imgix.net/examples/clouds.jpg?blur=150&w="
-- print(url)
local file = download_to_file(url,'FaL.jpg')
tdbot.sendPhoto(msg.to.id, msg.id, file, 0, {}, 0, 0, msg_caption, 0, 0, 1, nil, dl_cb, nil)
end
end

-- function AxE(msg, axe)
-- if matches[1]:lower() == 'ff' or matches[1]== 'fff' and matches[2] then
-- local url = "https://assets.imgix.net/examples/clouds.jpg?blur=150&w="
-- print(url)
-- local file = download_to_file(url,'FaL.png')
-- tdbot.sendDocument(msg.to.id, file,nil, nil, msg.id, 0, 1, nil, dl_cb, nil)
-- end
-- end

return {
  description = "تبدیل متن به لوگو",
  usage = {
    "/keep calm font text: ساخت لوگو",
  },
  patterns = {
   "^([Ff][Ff])$",
   "^(fff)$",
  },
  run = AxE
}

--#####################  other importants

