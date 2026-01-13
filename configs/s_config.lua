SConfig = {}

SConfig.Webhook = 'https://discord.com/api/webhooks/1012327895456571464/xYJ7QYJI0tcHRVJZ6ZpLb0fcJeGIF9qazA7gUHR3mAPu1oexodRmyrWsTmPh1Ei123456'

SConfig.Players = {
    'discord:566945562524516352',
	--or 'license:86b03d14ae40032f991e5707f36bdce3123469a7',
	--or 'steam:xxxxxxxxxxxxx'
	
}

function checkPlayerPermissions(source)
    local playerSource = source
    local playerIdentifiers = GetPlayerIdentifiers(playerSource)
    for k,v in pairs(playerIdentifiers) do
        for x,y in pairs(SConfig.Players) do
            if v == y then
                return true
            end
        end
    end
    return false
end