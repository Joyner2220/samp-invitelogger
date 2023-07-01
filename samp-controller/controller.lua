script_name('SAMP Remote Control Discord')
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
    printString("Remote control started", os.time())
end

-- finalize resources
function onScriptTerminate(script, quitGame)
    if script == thisScript() then
        printString("Remote control stopped", os.time())
    end
end