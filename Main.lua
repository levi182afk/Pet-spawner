-- Sab RNG Pet Spawner - Combined & Optimized for Delta
-- Developer: BestChildGame (Community)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Configuration
local CheatName = "Pet Spawner"
local GameName = "Sab RNG"
local Developer = "BestChildGame"

-- The actual script URL to fetch
local ScriptURL = "https://raw.githubusercontent.com/DeltaScripts/SabRNG-PetSpawner/main/main.lua"

print("[" .. CheatName .. "] Initializing...")

-- Load and execute the script with error handling
pcall(function()
    local success, result = pcall(game.HttpGet, game, ScriptURL)
    
    if success then
        -- If HttpGet returns a string, loadstring it
        if type(result) == "string" then
            local func, err = loadstring(result)
            if func then
                local execSuccess, execErr = pcall(func)
                if not execSuccess then
                    warn("[Cheat] Failed to execute loaded script:", execErr)
                else
                    print("[" .. CheatName .. "] Successfully executed in " .. GameName .. " by " .. Developer .. ".")
                end
            else
                warn("[Cheat] LoadString Error:", err)
            end
        else
            warn("[Cheat] HttpGet did not return a string.")
        end
    else
        warn("[Cheat] Failed to fetch script from URL:", result)
    end
end)
