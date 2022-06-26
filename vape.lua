print(getgenv().lib)
if getgenv().lib then
    local ServerPage = lib:addPage("Server")

    local Server = ServerPage:addSection("Server")

    local GameSection = ServerPage:addSection("Game")

    Server:addSlider("Server Players",ServerPlayers,1,12,function(Value)
        ServerPlayers = Value
    end)
    Server:addButton("Server Hop With Selected Server Players",function()
       LowestServer()
       lib:Notify("Server Hop","Done Searching : No Server Found") 
    end)
    Server:addButton("Server Hop(Charwar)",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/CharwarServerHop.lua"))()
    end)
    Server:addButton("Find Lowest Players Server(Amnesia)",function()
       loadstring(game:HttpGet("hhttps://raw.githubusercontent.com/vinhuchi/Island_Game/main/AmnesiaServerHop.lua"))()
    end)
    Server:addButton("Server Hop 2(Don't Support Synx But Better)",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/ServerHop.lua"))()
    end)
    Server:addButton("Find Lowest Players Server 2(Don't Support Synx But Better)",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/UniversalLowServerHop.lua"))()
    end)
    Server:addButton("Set Clip Board JobId(Server Id)",function()
       setclipboard(game.JobId)
    end)
    Server:addTextbox("Join Server With JobId(Current Sea)","Your Server Id Here(JobId)",function(Value)
       local JobId = tostring(Value)
       game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, JobId, game.Players.LocalPlayer)
    end)
    Server:addButton("Rejoin",function()
       game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)

    GameSection:addButton("Delete Ui",function()
        local ui = game:GetService("CoreGui"):FindFirstChild("Island v2")
        if ui then
            ui:Destroy()
        end
    end)
    GameSection:addButton("Copy Discord Server Link",function()
       setclipboard("https://discord.gg/kXPhQgzKCJ")
    end)
    GameSection:addButton("Join Discord Server",function()
        if req then
            req({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com'
                },
                Body = http:JSONEncode({
                    cmd = 'INVITE_BROWSER',
                    nonce = http:GenerateGUID(false),
                    args = {code = 'kXPhQgzKCJ'}
                })
            })
        end
    end)
    local RTXmode = {
       "Autumn";
       "Summer";
       "Summer2";
    }
    GameSection:addDropdown("RTX mode",RTXmode,function(Value)
       getgenv().mode = Value
    end)

    GameSection:addButton("RTX Graphic(Client)",function()
        lib:Notify("RTX Graphic","Credit To Switchblades")
        if getgenv().mode == "Summer2" then
            local yep = game.Lighting
            local yep2 = Instance.new("Sky")
            local yep3 = Instance.new("BloomEffect")
            local yep4 = Instance.new("BlurEffect")

            yep2.Parent = yep
            yep2.MoonTextureId = "rbxasset://sky/moon.jpg"
            yep2.SkyboxBk = "http://www.roblox.com/asset?id=153258865"
            yep2.SkyboxDn = "http://www.roblox.com/asset?id=153259937"
            yep2.SkyboxFt = "http://www.roblox.com/asset?id=153258844"
            yep2.SkyboxLf = "http://www.roblox.com/asset?id=153258851"
            yep2.SkyboxRt = "http://www.roblox.com/asset?id=153258851"
            yep2.SkyboxUp = "http://www.roblox.com/asset?id=153259943"
            yep2.StarCount = 3000
            yep2.SunAngularSize = 21
            yep2.SunTextureId = "rbxasset://sky/sun.jpg"

            yep3.Parent = yep
            yep3.Intensity = 1
            yep3.Size = 24
            yep3.Threshold = 0.5
            yep3.Enabled = true

            yep4.Parent = yep
            yep4.Enabled = true
            yep4.Size = 5.5
            return
        end
        local a = game.Lighting
        a.TimeOfDay = 20
        a.Ambient = Color3.fromRGB(33, 33, 33)
        a.Brightness = 6.67
        a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
        a.EnvironmentDiffuseScale = 0.105
        a.EnvironmentSpecularScale = 0.522
        a.GlobalShadows = true
        a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
        a.ShadowSoftness = 0.04
        a.GeographicLatitude = -15.525
        a.ExposureCompensation = 0.75

        local b = Instance.new("BloomEffect", a)
        b.Enabled = true
        b.Intensity = 0.04
        b.Size = 1900
        b.Threshold = 0.915

        local c = Instance.new("ColorCorrectionEffect", a)
        c.Brightness = 0.176
        c.Contrast = 0.39
        c.Enabled = true
        c.Saturation = 0.2
        c.TintColor = Color3.fromRGB(217, 145, 57)
        if getgenv().mode == "Summer" then
            c.TintColor = Color3.fromRGB(255, 220, 148)
        elseif getgenv().mode == "Autumn" then
            c.TintColor = Color3.fromRGB(217, 145, 57)
        else
            lib:Notify("RTX mode","No mode selected!")
            lib:Notify("RTX mode","Please select a mode")
            b:Destroy()
            c:Destroy()
        end

        local d = Instance.new("DepthOfFieldEffect", a)
        d.Enabled = true
        d.FarIntensity = 0.077
        d.FocusDistance = 21.54
        d.InFocusRadius = 20.77
        d.NearIntensity = 0.277

        local e = Instance.new("ColorCorrectionEffect", a)
        e.Brightness = 0
        e.Contrast = -0.07
        e.Saturation = 0
        e.Enabled = true
        e.TintColor = Color3.fromRGB(255, 247, 239)

        local e2 = Instance.new("ColorCorrectionEffect", a)
        e2.Brightness = 0.2
        e2.Contrast = 0.45
        e2.Saturation = -0.1
        e2.Enabled = true
        e2.TintColor = Color3.fromRGB(255, 255, 255)

        local s = Instance.new("SunRaysEffect", a)
        s.Enabled = true
        s.Intensity = 0.01
        s.Spread = 0.146
    end)

    GameSection:addButton("FPS Boost",function()
        lib:Notify("Fps Boost","Credit to e621")
        
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/rblx/api/fpsboost.lua"))()
    end)
end
