local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Trollface",

    Model = "https://github.com/Ilikerobloxdoors/Trollface/blob/main/Trollface.rbxm",

    Speed = 250,
    DelayTime = 3,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        2,
    },

    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },

    CamShake = {
        true,
        {4, 32, 0.3, 1.5},
        100,
    },

    Jumpscare = {
        false,
    },

    CustomDialog = {
        "You died to Trollface..."
    },
})

-- Debug callbacks
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Trollface has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Trollface has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Trollface has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Trollface has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Trollface entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Trollface")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Trollface.")
end

-- Run Trollface
Creator.runEntity(entity)
