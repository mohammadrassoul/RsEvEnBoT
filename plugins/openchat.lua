function moein(msg, matches) 
if matches[1] == "openchat" and is_admin(msg) then 
local chat = redis:smembers('su')
  for i=1, #chat do
  tdcli.openChat(chat[i])
  end
  tdcli.sendMessage(msg.chat_id_, msg.id_, 1,"*Chat Reloaded*", 1, 'md')     
  end
  end
return { 
  patterns = {"^[!/#](openchat)$"}, 
run = moein
}
----------
---@moeinhp
----------
