en
                    if tonumber(matches[2]) == tonumber(our_id) then
                        return
                    end
                    if is_momod2(matches[2], msg.to.id) then
                        return 'You can\'t warn mod/owner/admin/sudo!'
                    end
                    local user_id = matches[2]
                    local chat_id = msg.to.id
                    local print_name = user_print_name(msg.from):gsub("‮", "")
                    local name = print_name:gsub("_", "")
                    warn_user(user_id, chat_id)
                else
                    resolve_username(string.gsub(matches[2], '@', ''), Warn_by_username, { msg = msg })
                end
            end
            if matches[1]:lower() == 'unwarn' then
                if type(msg.reply_id) ~= "nil" then
                    msgr = get_message(msg.reply_id, Unwarn_by_reply, false)
                elseif string.match(matches[2], '^%d+$') then
                    local user_id = matches[2]
                    local chat_id = msg.to.id
                    local print_name = user_print_name(msg.from):gsub("‮", "")
                    local name = print_name:gsub("_", "")
                    unwarn_user(user_id, chat_id)
                else
                    resolve_username(string.gsub(matches[2], '@', ''), Unwarn_by_username, { msg = msg })
                end
            end
            if matches[1]:lower() == 'unwarnall' then
                if type(msg.reply_id) ~= "nil" then
                    msgr = get_message(msg.reply_id, Unwarnall_by_reply, false)
                elseif string.match(matches[2], '^%d+$') then
                    local user_id = matches[2]
                    local chat_id = msg.to.id
                    local print_name = user_print_name(msg.from):gsub("‮", "")
                    local name = print_name:gsub("_", "")
                    unwarnall_user(user_id, chat_id)
                else
                    resolve_username(string.gsub(matches[2], '@', ''), Unwarnall_by_username, { msg = msg })
                end
            end
        end
    else
        return 'This plugin requires mod privileges or higher.'
    end
end

return {
    description = "WARN",
    patterns =
    {
        "^[#!/]([Ww][Aa][Rr][Nn][Mm][Aa][Xx]) (%d+)$",
        "^[#!/]([Gg][Ee][Tt][Ww][Aa][Rr][Nn]) (.*)$",
        "^[#!/]([Gg][Ee][Tt][Ww][Aa][Rr][Nn])$",
        "^[#!/]([Ww][Aa][Rr][Nn]) (.*)$",
        "^[#!/]([Ww][Aa][Rr][Nn])$",
        "^[#!/]([Uu][Nn][Ww][Aa][Rr][Nn]) (.*)$",
        "^[#!/]([Uu][Nn][Ww][Aa][Rr][Nn])$",
        "^[#!/]([Uu][Nn][Ww][Aa][Rr][Nn][Aa][Ll][Ll]) (.*)$",
        "^[#!/]([Uu][Nn][Ww][Aa][Rr][Nn][Aa][Ll][Ll])$",
    },
    run = run,
}
