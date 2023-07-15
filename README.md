# KnoesNotify


Preview : 

![image](https://cdn.discordapp.com/attachments/1081604119241969724/1129384076319674418/image.png)

Preview : https://streamable.com/9xi1o3

qb-core>config add
 
QBConfig.KnoesNotify = true



qb-core/client/functions.lua  QBCore.Functions.Notify replace
```
if QBCore.Config.KnoesNotify == true then
    function QBCore.Functions.Notify(text, textype, length)
        if type(text) == "table" then
            local ttext = text.text or 'Placeholder'
            local caption = text.caption or 'Placeholder'
            local ttype = textype or 'info'
            local length = length or 8500
            exports['KnoesNotify']:Alert(ttext, caption, length, ttype)
        else
            local ttype = textype or 'info'
            local length = length or 8500
            exports['KnoesNotify']:Alert(text, "", length, ttype)
        end
    end 
else
    function QBCore.Functions.Notify(text, texttype, length)
        if type(text) == "table" then
            local ttext = text.text or 'Placeholder'
            local caption = text.caption or 'Placeholder'
            texttype = texttype or 'primary'
            length = length or 5000
            SendNUIMessage({
                action = 'notify',
                type = texttype,
                length = length,
                text = ttext,
                caption = caption
            })
        else
            texttype = texttype or 'primary'
            length = length or 5000
            SendNUIMessage({
                action = 'notify',
                type = texttype,
                length = length,
                text = text
            })
        end
    end
end 
```
Original Script:https://github.com/TheoLevi/LeviNotify

