local function do_keyboard_aboutus()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👤سودو ها👤', callback_data = '!owners'},
			},
			{
			{text = '👥ادمین ها👥', callback_data = '!members'},
			},
			{
	    {text = '💚صفحه قبلی💚', callback_data = '!home'},
	    }
    }
    return keyboard
end
local function do_keyboard_owners()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = 'Dr.Cyber', url = 'http://telegram.me/DrCyber'},},
			{{text = 'NavidQuick', url = 'http://telegram.me/NavidQuick'},},
			{{text = 'HamedQuick', url = 'http://telegram.me/HamedQuick'},},
			{{text = 'Mr_Nitro', url = 'http://telegram.me/Mr_Nitro'},},
			{{text = 'Pouria', url = 'http://telegram.me/This_Is_Pouria'},},
			{{text = 'Soheil', url = 'http://telegram.me/Soheil_MAX'},},
			{{text = 'Shaghayegh', url = 'http://telegram.me/Shaghayegh_Quick'},},
			{{text = 'Mehdi', url = 'http://telegram.me/Uconn_Quick'},},
			{{text = '💚صفحه قبلی💚', callback_data = '!aboutus'},
	    }
    }
    return keyboard
end
local function do_keyboard_members()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = 'AƖιяєzα' , url = 'telegram.me/Alirezaw_Tabrizi'},
			},
			{
			{text = 'A.r.a.d', url = 'telegram.me/Win3ton_021'},
			},
			{
			{text = '»»ρσoყα➣ραყԃαɾ««', url = 'telegram.me/Pooya_Paydar'},
			},
			{
			{text = 'MrNitro', url = 'telegram.me/Mr_Nitro'},
			},
			{
	    {text = '💚صفحه قبلی💚', callback_data = '!aboutus'},
        }
    }
    return keyboard
end
local action = function(msg,blocks)
local msg_id = msg.message_id
local chat = msg.chat.id
local query = blocks[1]
    if msg.cb then
	if query == 'aboutus' then
		local keyboard = do_keyboard_aboutus()
		local text = [[لطفا انتخاب کنید]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'owners' then
		local keyboard = do_keyboard_owners()
		local text = [[*👤سودو ها👤*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'members' then
		local keyboard = do_keyboard_members()
		local text = [[*👥ادمین ها👥*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	end
	end
return {
  action = action,
triggers = {
	    '^###cb:!(aboutus)',
	    '^###cb:!(owners)',
	    '^###cb:!(members)',
    }
}
