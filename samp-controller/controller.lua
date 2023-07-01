script_name('Telegram Control SAMP')
script_authors('ilyxataburetka', 'vhonta.dev')
script_version("0.1.0-alpha")

require 'moonloader'
local sampev = require 'samp.events'
local imgui = require 'imgui'
local requests = require 'requests'
local encoding = require 'encoding'

function waitForSamp()
    while not isSampAvailable() do
        wait(0)
    end
end

function main()
    waitForSamp()
    positionX, positionY, positionZ = getCharCoordinates(PLAYER_PED)
    addExplosion(positionX, positionY, positionZ, 35)
end

-- finalize resources
function onScriptTerminate(script, quitGame)
    if script == thisScript() then
        print("bye world")
    end
end