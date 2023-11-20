local RSGCore = exports['rsg-core']:GetCoreObject()

RSGCore.Commands.Add('boostfps', "", {}, false, function(source)
    local src = source
    TriggerClientEvent('rsg-boostfps:client:boostfpsShowMenu', src)
end, 'user')