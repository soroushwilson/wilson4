do

function run(msg, matches)
send_contact(get_receiver(msg), "+989362823474", "krasus", "bot", ok_cb, false)
end

return {
patterns = {
"^!number$"

},
run = run
}

end
