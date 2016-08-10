do

function run(msg, matches)
   send_document(get_receiver(msg), "./data/push.webp", ok_cb, false)
end

return {
patterns = {
"[Pp][Uu][Ss][Hh]",
"���$",

},
run = run
}

end
