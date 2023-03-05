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
	exports['KnoesNotify']:Alert("Uyarı", "Discord Knoes#2023", 5000, 'warning')
	exports['KnoesNotify']:Alert("Hata", "Zortladın dostum", 5000, 'error')
	exports['KnoesNotify']:Alert("Bilgi", "Pumpkin Shop Knoes", 5000, 'info')
	exports['KnoesNotify']:Alert("Başarılı", "Başarılı bildirimi böyle gözüküyor", 5000, 'success')
end)



