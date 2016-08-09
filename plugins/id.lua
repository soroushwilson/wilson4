do

function run(msg, matches)
local reply_id = msg['id']

local info = "🔥 #نام گروه : "..msg.to.title.."\n🔥 #شناسه گروه : "..msg.from.id.."\n🔥 #نام شما : "..(C or '---').."\n🔥 #نام اول : "..(msg.from.first_name or '---').."\n🔥 #نام آخر : "..(msg.from.last_name or '---').."\n🔥 #آیدی : "..msg.from.id.."\n🆔 #یوزرنیم : @"..(msg.from.username or '---').."\n📱 #شماره تلفن : +"..(msg.from.phone or '').."\n🔥#رابط کاربری:---".."\n🆔 #یوزرنیم : telegram.me/"..(msg.from.username or '---').."\n"
if matches[1] == 'ایدی' then
    if is_momod(msg) then
reply_msg(reply_id, info, ok_cb, false)
end
end
end

return {
patterns = {
"^id$"

},
run = run
}

end
