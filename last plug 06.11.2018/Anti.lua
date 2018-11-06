-- install apt-get install aapt -y
main = 'cli' --enter main bot
function UseMark(text)
if text:match('_') then
output = text:gsub('_',[[\_]])
elseif text:match('*') then
output = text:gsub('*','\\*')
elseif text:match('`') then
output = text:gsub('`','\\`')
else
output = text
end
return output
end
Filters = {Packages={'com.ihan','com.beth','com.ionicframework','com.bisotoon','com.google.gms.android','com.sadafapps','com.jeyteam','ir.oddrun','ir.rad','com.antivirus.helina',},Labels = {'روزآروز','سکسی','موبوگرام','بومرنگ','اسم ساز'},}
function run(msg,matches)
if matches[1] == 'اسکن' and msg.reply_id then
function CallBack(arg, data)
if data.content and data.content._ == 'messageDocument' then
if data.content.document.mime_type == 'application/vnd.android.package-archive' then
tdbot.downloadFile(data.content.document.document.id, 32)
output = io.popen('aapt dump badging $HOME/.telegram-bot/'..main..'/files/documents/'..data.content.document.file_name):read("*a")
io.popen('rm $HOME/.telegram-bot/'..main..'/files/documents/'..data.content.document.file_name):read('*a')
reason = ''
risk = ''
poss = 0
if output:match("package") then
packageName = {string.match(output, "package: name='(.*)' versionCode=")} or {''}
for k,v in pairs(Filters.Packages) do
if packageName[1]:match(v) then
reason = reason..'برنامه آلوده است '
break
end
end
for k,v in pairs(Filters.Labels) do
if string.match(output, v) then
reason = reason..' برچسب غیر مجاز '
break
end
end
if output:match(packageName[1].."permission.C2D_MESSAGE") then
risk = risk..' انجام عملیات مخفی ,'
poss = poss + 2
end
if output:match("android.permission.READ_PHONE_STATE") then
risk = risk..' دسترسی در هر زمان ,'
poss = poss + 1
end
if output:match("android.permission.WRITE_EXTERNAL_STORAGE") then
risk = risk..' ذخیره فایل ,'
poss = poss + 1
end
if output:match("android.permission.SEND_SMS") then
risk = risk..' ارسال پیام ,'
poss = poss + 2
end
if output:match("android.permission.RECEIVE_SMS") then
risk = risk..' دریافت پیام ,'
poss = poss + 1
end
if output:match("android.permission.READ_SMS") then
risk = risk..' خواندن پیام ,'
poss = poss + 2
end
if output:match("android.permission.SYSTEM_ALERT_WINDOW") then
risk = risk..' ساخت پنجره ,'
poss = poss + 2
end
if output:match("android.permission.CALL_PHONE") then
risk = risk..' گرفتن تماس ,'
poss = poss + 1
end
end
poss = math.ceil((poss/12)*100)
if reason ~= '' or (risk ~= '' and poss ~= 0) then
txt = 'انجام شد'
if reason ~= '' then
txt = 'هشدار برنامه ویروسی است  \nدلیل: '..reason
end
tdbot.sendMessage(msg.to.id, msg.id, 1,string.gsub(txt..'\nدرصد ریسک: %'..poss..'\nنام پکیج: '..UseMark(packageName[1])..'\nدسترسی ها: [ '..risk..' ]',', ]',']'), 1, 'md')
else
if packageName then
name = UseMark(packageName[1])
else
name = 'خطا'
end
tdbot.sendMessage(msg.to.id, msg.id, 1,'تهدیدی در پکیج [ '..name..' ] یافت نشد، احتمال خطا در دانلود فایل وجود دارد دوباره تلاش کنید', 1, 'md')
end
else
tdbot.sendMessage(msg.to.id, msg.id, 1,'تنها برنامه های سیستم عامل اندروید قابل اسکن هستند', 1, 'md')
end
end
end
tdbot.getMessage(msg.chat_id, tonumber(msg.reply_to_message_id), CallBack)
end
end
return {
--dev @ir_milad
patterns = {
"^اسکن$",
},
run = run,
}