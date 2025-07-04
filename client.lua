function Alert(title, message, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end
RegisterNetEvent('xNotify:Alert')
AddEventHandler('xNotify:Alert', function(title, message, time, type)
	Alert(title, message, time, type)
end)

-- Example Commands - Delete them

RegisterCommand('xNotify:success', function()
    exports['xNotify']:Alert("SUCCESS", "You have sent <span style='color:#47cf73'>420€</span> to Tommy!", 5000, 'success')
end)

RegisterCommand('xNotify:info', function()
    exports['xNotify']:Alert("INFO", "The Casino has opened!", 5000, 'info')
end)

RegisterCommand('xNotify:error', function()
    exports['xNotify']:Alert("ERROR", "Please try again later!", 5000, 'error')
end)

RegisterCommand('xNotify:warning', function()
    exports['xNotify']:Alert("WARNING", "You are getting nervous!", 5000, 'warning')
end)

RegisterCommand('xNotify:phone', function()
    exports['xNotify']:Alert("SMS", "<span style='color:#f38847'>Tommy: </span> Where are you?", 5000, 'phonemessage')
end)

RegisterCommand('xNotify:longtext', function()
    exports['xNotify']:Alert("LONG MESSAGE", "Lorem ipsum dolor sit amet, consectetur adipiscing elit e pluribus unum.", 5000, 'neutral')
end)