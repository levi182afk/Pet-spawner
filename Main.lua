-- Sab RNG Pet Spawner - Direct Execution (No External Dependency)
-- Developer: BestChildGame (Community)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Configuration
local CheatName = "Pet Spawner"
local GameName = "Sab RNG"
local Developer = "BestChildGame"

-- YOUR RAW LINK HERE
local MyCode = [[
-- Paste your actual pet spawning logic here if you have it.
-- If you don't have custom logic yet, this placeholder will just print success.
print("[" .. CheatName .. "] Logic loaded from local scope.")
]]

print("[" .. CheatName .. "] Initializing...")

-- Execute the code directly
pcall(function()
    local func, err = loadstring(MyCode)
    if func then
        local execSuccess, execErr = pcall(func)
        if not execSuccess then
            warn("[Cheat] Error executing logic:", execErr)
        else
            print("[" .. CheatName .. "] Successfully executed in " .. GameName .. " by " .. Developer .. ".")
        end
    else
        warn("[Cheat] LoadString Error:", err)
    end
end)
