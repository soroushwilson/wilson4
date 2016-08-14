local function run(msg)
if msg.text == "hi" then
 return "Hi Baby :)"
end
if msg.text == "Hi" then
 return "Hello Honey :)"
end
if msg.text == "Hello" then
 return "Hi :)"
end
if msg.text == "hello" then
 return "Hi Honey"
end
if msg.text == "Salam" then
 return "Salam Azizam"
end
if msg.text == "salam" then
 return "Salam"
end
if msg.text == "krasus" then    
 return "Best Bot In The World!"
end
if msg.text == "mybot" then
 return "Best Bot In The World!"
end
if msg.text == "bot" then
 return "Best Bot In The World!"
end
if msg.text == "dadash saman" then
 return "Han?"
end
if msg.text == "amour" then
 return "Koft Chikaresh Dari?"
end
if msg.text == "Saman" then
 return "Rafte Lala :/"
end
if msg.text == "saman" then
 return "Khabe :|"
end
if msg.text == "mamshotak" then
 return "mametoshak?"
end
if msg.text == "creed" then
 return "Nagaiidam :|"
end
if msg.text == "?" then
 return "Chiye?"
end
if msg.text == "Bye" then
 return "Bye Dayus"
end
if msg.text == "bye" then
 return "boro be kiram"
end
if msg.text == "سلام" then
 return "سلام عزیزم :)"
end
if msg.text == "ممشوتک" then
 return "ممه تشکو میگی؟"
end
if msg.text == "سامانی" then
 return "رفته استخر :|"
end
if msg.text == "داداش" then
 return "جونم؟ بگو"
end
if msg.text =="داداش سامان" then
 return "رفته توالت وایسا بیاد"
end
if msg.text == "داداشی" then
 return "کدوم داداشی؟"
end
if msg.text == "سامان" then
 return "این آی دیشه @alfred_regular"
end
if msg.text == "امور" then
 return "واسا الان میاد"
end
if msg.text == "امور داداش" then
 return "جانم چیکارش داری؟"
end
if msg.text == "کیر" then
 return "تو کس عمت"
end
if msg.text == "kir" then
 return "to kos amat"
end
end

return {
 description = "Chat With Robot Server", 
 usage = "chat with robot",
 patterns = {
    "^[Hh]i$",
    "^[Hh]ello$",
    "^[Ss]alam$",
    "^[Kk]rasus$",
    "^[Ss]aman$",
    "^[Aa]mour$",
    "^[Mm]amshotak$",
    "^?$",
    "^[Bb]ye$",
    "^[Dd]adash saman$",
 "^سلام",
 "^ممشوتک", 
 "^سامان", 
 "^امور",
 "^امور داداش",
 "^داداش سامان",
 "^داداش امور",
 "^داداش",
   "^داداشی",
    "^[Cc]reed$",
        "^کیر",
    "^[Kk]ir$",
}, 
 run = run,
    --privileged = true,
 pre_process = pre_process
}
