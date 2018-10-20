local function AXE(msg, axe)
-- ########################
if redis:get(RedisIndex.."lock_cmd"..msg.chat_id) and not is_mod(msg) then return false end
-- ######################## set matn 1
if (axe[1]:lower() == 'set matn one' or axe[1] == 'تنظیم متن یک') and is_sudo(msg) then
	redis:set(RedisIndex..'matn1',axe[2])
	return '`متن 1 شما با موفقیت تنظیم شد :`\n\n '..check_markdown(axe[2])..''
end
-- ######################## receive matn 1
if axe[1]:lower() == 'matn one' or axe[1] == 'متن یک' then
	local hash1 = ('matn1')
	local matn1 = redis:get(RedisIndex..hash1)
	if not matn1 then
		return '`متنی برای matn1 ثبت نشده`'
	else
		tdbot.sendMessage(msg.chat_id, msg.id, 1, check_markdown(matn1), 1, 'md')
	end
end
-- ######################## set matn 2
if (axe[1]:lower() == 'set matn two' or axe[1] == 'تنظیم متن دو') and is_sudo(msg) then
	redis:set(RedisIndex..'matn2',axe[2])
	return '`متن 2 شما با موفقیت تنظیم شد :`\n\n '..check_markdown(axe[2])..''
end
-- ######################## receive matn 2
if axe[1]:lower() == 'matn two' or axe[1] == 'متن دو' then
	local hash2 = ('matn2')
	local matn2 = redis:get(RedisIndex..hash2)
	if not matn2 then
		return '`متنی برای matn2 ثبت نشده`'
	else
		tdbot.sendMessage(msg.chat_id, msg.id, 1, check_markdown(matn2), 1, 'md')
	end
end
-- ######################## set matn 3
if (axe[1]:lower() == 'set matn three' or axe[1] == 'تنظیم متن سه') and is_sudo(msg) then
	redis:set(RedisIndex..'matn3',axe[2])
	return '`متن 3 شما با موفقیت تنظیم شد :`\n\n '..check_markdown(axe[2])..''
end
-- ######################## receive matn 3
if axe[1]:lower() == 'matn three' or axe[1] == 'متن سه' then
	local hash3 = ('matn3')
	local matn3 = redis:get(RedisIndex..hash3)
	if not matn3 then
		return '`متنی برای matn3 ثبت نشده`'
	else
		tdbot.sendMessage(msg.chat_id, msg.id, 1, check_markdown(matn3), 1, 'md')
	end
end
-- ######################## set matn 4
if (axe[1]:lower() == 'set matn four' or axe[1] == 'تنظیم متن چهار') and is_sudo(msg) then
	redis:set(RedisIndex..'matn4',axe[2])
	return '`متن 4 شما با موفقیت تنظیم شد :`\n\n '..check_markdown(axe[2])..''
end
-- ######################## receive matn 4
if axe[1]:lower() == 'matn four' or axe[1] == 'متن چهار' then
	local hash4 = ('matn4')
	local matn4 = redis:get(RedisIndex..hash4)
	if not matn4 then
		return '`متنی برای matn4 ثبت نشده`'
	else
		tdbot.sendMessage(msg.chat_id, msg.id, 1, check_markdown(matn4), 1, 'md')
	end
end
-- ######################## set matn 5
if (axe[1]:lower() == 'set matn five' or axe[1] == 'تنظیم متن پنج') and is_sudo(msg) then
	redis:set(RedisIndex..'matn5',axe[2])
	return '`متن 5 شما با موفقیت تنظیم شد :`\n\n '..check_markdown(axe[2])..''
end
-- ######################## receive matn 5
if axe[1]:lower() == 'matn five' or axe[1] == 'متن پنج' then
	local hash5 = ('matn5')
	local matn5 = redis:get(RedisIndex..hash5)
	if not matn5 then
		return '`متنی برای matn5 ثبت نشده`'
	else
		tdbot.sendMessage(msg.chat_id, msg.id, 1, check_markdown(matn5), 1, 'md')
	end
end
end

return {
patterns ={
"^([Ss]et matn one) (.*)$", "^([Mm]atn one)$",
"^(تنظیم متن یک) (.*)$", "^(متن یک)$",
"^([Ss]et matn two) (.*)$", "^([Mm]atn two)$",
"^(تنظیم متن دو) (.*)$", "^(متن دو)$",
"^([Ss]et matn three) (.*)$", "^([Mm]atn three)$",
"^(تنظیم متن سه) (.*)$", "^(متن سه)$",
"^([Ss]et matn four) (.*)$", "^([Mm]atn four)$",
"^(تنظیم متن چهار) (.*)$", "^(متن چهار)$",
"^([Ss]et matn five) (.*)$", "^([Mm]atn five)$",
"^(تنظیم متن پنج) (.*)$", "^(متن پنج)$",
},
run = AXE
}