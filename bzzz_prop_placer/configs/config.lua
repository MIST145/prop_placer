Config = {}

Config.OpenMenuCommand = 'create_props'

Config.Keys = {
    move_plus_x = 173,
    move_minus_x = 172,
    move_plus_y = 175,
    move_minus_y = 174,
    move_plus_z = 36,
    move_minus_z = 21,
    heading_plus = 52,
    heading_minus = 38,
    stop_editing = 244,
    speed = 19,
}

Config.Speeds = {
    default_heading = 5.00,
    speed_heading = 10.0,
    hyper_speed_heading = 20.0,
}

Config.Locales = {
    WarMenu = {
        propPlacer = 'Prop Placer',
        selectProp = 'Select prop or create new',
        propOptions = 'Prop Options',
        createProp = 'Create new prop',
        deleteAllProps = 'Delete All Props',
        saveAllProps = 'Save all props',
        deleteProp = 'Delete Prop',
        editProp = 'Edit Prop',
        saveProp = 'Save prop coords',
    },
    Buttons = {
        move_plus_x = 'Move on axis +x',
        move_minus_x = 'Move on axis -x',
        move_plus_y = 'Move on axis +y',
        move_minus_y = 'Move on axis -y',
        move_plus_z = 'Move up',
        move_minus_z = 'Move down',
        heading_plus = 'Rotate +Heading',
        heading_minus = 'Rotate -Heading',
        stop_editing = 'Stop editing',
        default_speed = 'Default Heading speed',
        speed_plus = 'Heading Speed+',
        hyper_speed = 'Hyper Heading Speed',
    },
    Notify = {
        propNotExist = 'This prop does not exist.',
        savedAll = 'All props have been saved.',
        saved = 'The prop has been saved.',
        permissions = 'You dont have permissions for this.',
    },
    Webhook = {
        playerSavedProp = 'Player saved prop',
        player = 'Player:',
        identifier = 'Identifier:',
        propHash = 'Prop Hash:',
        propId = 'Prop Id:',
        propCoords = 'Prop Coords:',
        propHeading = 'Prop Heading:',
    },
}

Config.NotificationType = 'Scaleform' -- Scaleform/Custom

function notifyPlayer(notifyText)
    if Config.NotificationType == 'Scaleform' then
        SetNotificationTextEntry('STRING')
        AddTextComponentSubstringPlayerName(notifyText)
        DrawNotification(false, true)
    else
        -- Insert your export or something like this
    end
end

RegisterNetEvent('bzzz_prop_placer:notify')
AddEventHandler('bzzz_prop_placer:notify', function(textNotify)
    notifyPlayer(textNotify)
end)