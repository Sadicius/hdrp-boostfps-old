local RSGCore = exports['rsg-core']:GetCoreObject()

---------------------------------------------------------------------
-- Menu
-- {
--   title = 'Boost Fps Menu',
--   description = 'Boost fps',
--   icon = 'fa-solid fa-eye',
--   event = 'rsg-boostfps:client:boostfpsShowMenu',
--   arrow = true
-- },
---------------------------------------------------------------------

RegisterNetEvent('rsg-boostfps:client:boostfpsShowMenu')
AddEventHandler('rsg-boostfps:client:boostfpsShowMenu', function()
    lib.registerContext({
        id = 'boost_menu',
        title = 'Boost FPS',
        options = {
            {
                title = 'FPS Boost #1',
                description = 'smg2 intro sunboost',
                icon = 'fas fa-code-merge',
                onSelect = function()
                    SetTimecycleModifier('smg2_intro_sunboost')
                    Citizen.InvokeNative(0xFDB74C9CC54C3F37, 1.0) -- Set the timecycle modifier strength
                end,
            },
            {
                title = 'Graphics Reflection',
                description = 'Reset options selected',
                icon = 'fas fa-code-merge',
                onSelect = function()
                    SetTimecycleModifier('reduceHDR_Reflection_0pt1')
                    Citizen.InvokeNative(0xFDB74C9CC54C3F37, 1.0) -- Set the timecycle modifier strength
                end,
            },
            {
                title = 'Others Menu',
                description = 'Others FPS options',
                icon = 'fas fa-code-merge',
                event = 'rsg-boostfps:client:boostfpsOthersMenu',
                arrow = true,
            },
            {
                title = 'Simple/Reset',
                description = 'Reset options selected',
                icon = 'fa-solid fa-clipboard',
                onSelect = function()
                    Citizen.InvokeNative(0x0E3F4AF2D63491FB) -- Clear the timecycle modifier
                end,
            },
        },
    })
    lib.showContext('boost_menu')
end)

RegisterNetEvent('rsg-boostfps:client:startanimation', function(option)
  SetTimecycleModifier(option)
  Citizen.InvokeNative(0xFDB74C9CC54C3F37, 1.0) -- Set the timecycle modifier strength
end)

local function createMenu(event, timecycles, title)
  local option = {}

  for i = 1, #timecycles do
      local hash = timecycles[i]
      local content = { value = hash }
      option[#option + 1] = content
  end

  local input = lib.inputDialog(title .. ' timecyclesS', {
      { label = 'Types', type = 'select', options = option, required = true },
  })

  if not input then
      return
  end

  TriggerEvent('rsg-boostfps:client:startanimation', option)
end

local function createSubMenu(title, description, event)
  return {
      title = title,
      description = description .. ' FPS options',
      icon = 'fas fa-code-merge',
      event = event,
      arrow = true
  }
end

RegisterNetEvent('rsg-boostfps:client:boostfpsOthersMenu')
AddEventHandler('rsg-boostfps:client:boostfpsOthersMenu', function()
  lib.registerContext({
      id = 'boost_fps_menu',
      title = 'Boost FPS',
      menu = 'boost_menu',
      onBack = function() end,
      options = {
          createSubMenu('DeadEye Menu', 'Others', 'rsg-boostfps:client:boostfpsDeadShowMenu'),
          createSubMenu('EagleEye Menu', 'EagleEye', 'rsg-boostfps:client:boostfpsEagleEyeShowMenu'),
          createSubMenu('Lights Menu', 'Lights', 'rsg-boostfps:client:boostfpsLightsShowMenu')
      }
  })
  lib.showContext('boost_fps_menu')
end)

RegisterNetEvent('rsg-boostfps:client:boostfpsDeadShowMenu')
AddEventHandler('rsg-boostfps:client:boostfpsDeadShowMenu', function()
  createMenu('rsg-boostfps:client:startanimation', Config.DeadEyetimecycles, 'DeadEye')
end)

RegisterNetEvent('rsg-boostfps:client:boostfpsEagleEyeShowMenu')
AddEventHandler('rsg-boostfps:client:boostfpsEagleEyeShowMenu', function()
  createMenu('rsg-boostfps:client:startanimation', Config.EagleEyetimecycles, 'EagleEye')
end)

RegisterNetEvent('rsg-boostfps:client:boostfpsLightsShowMenu')
AddEventHandler('rsg-boostfps:client:boostfpsLightsShowMenu', function()
  createMenu('rsg-boostfps:client:startanimation', Config.Lightstimecycles, 'Lights')
end)
