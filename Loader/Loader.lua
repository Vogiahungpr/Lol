local BladeBallIDs = {
    13772394625, -- Main
    15234596844, -- Training
    14732610803, -- Pro Server
    16281300371, -- After tutorial
    15144787112, -- Duel lobby
    14915220621, -- Ranked lobby
    15264892126, -- Ranked match
    17757592456, -- New event sex
}

local GameID = game.PlaceId

local function isBladeBall(id)
    for _, v in ipairs(BladeBallIDs) do
        if v == id then
            return true
        end
    end
    return false
end

pcall(function()
    if isBladeBall(GameID) then
        print("Loading Blade Ball script...")
        local success, error = pcall(function()
            loadstring(game:HttpGet("https://lol-sigma-wtf.vercel.app/Loader/Normalbb.lua"))()
        end)
        if not success then
            warn("Failed to load Blade Ball script: " .. tostring(error))
        end
        elseif GameID == 155615604 then
        print("Loading Prison life script...")
        loadstring(game:HttpGet("https://lol-sigma-wtf.vercel.app/Loader/prison.lua"))()
    elseif GameID == 537413528 then
        print("Loading Build a boat for treasure script...")
        loadstring(game:HttpGet("https://lol-sigma-wtf.vercel.app/Loader/boat.lua"))()

    else
        warn("No script configured for this game. Current ID: " .. tostring(GameID))
    end
end)
