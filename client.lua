function Alert(title, message, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end

RegisterNetEvent('KnoesNotify:Alert', function(title, message, time, type)
	Alert(title, message, time, type)
end)



RegisterCommand('notify', function()
	exports['KnoesNotify']:Alert("Warning", "Discord Knoes", 5000, 'warning')
	exports['KnoesNotify']:Alert("Error", "Error!!!! ", 5000, 'error')
	exports['KnoesNotify']:Alert("Info", "KnoesNotify V2", 5000, 'info')
	exports['KnoesNotify']:Alert("Success", "Hello", 5000, 'success')
end)



