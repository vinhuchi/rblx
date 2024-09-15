
repeat wait() until game:IsLoaded()

local GuiService = game:GetService("GuiService")
GuiService.ErrorMessageChanged:Connect(function()
    local Code = GuiService:GetErrorCode().Value
    if Code >= Enum.ConnectionError.DisconnectErrors.Value then
        getgenv().StopUpdate = true
    end
end)
local length = 30
local rq = http_request or request or HttpPost or syn.request
local length = 30

task.spawn(function()
    while task.wait(5) do
        if not getgenv().StopUpdate and game.Players.LocalPlayer.Parent and game.Players.LocalPlayer:FindFirstChild("PlayerScripts") then 
            rq({Url="http://172.16.1.2:6969/set", Headers ={['Content-Type'] = 'application/json'}, Method = "POST", Body = game:GetService('HttpService'):JSONEncode({user=game.Players.LocalPlayer.Name})})

            rq({Url="http://10.0.2.2:6969/set", Headers ={['Content-Type'] = 'application/json'}, Method = "POST", Body = game:GetService('HttpService'):JSONEncode({user=game.Players.LocalPlayer.Name})})
        end
    end
end)
task.spawn(function()
    while task.wait(10) do
        if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
            repeat task.wait() until not game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main"):FindFirstChild("ChooseTeam")

            function GetCDK()
                for _, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
                    if v.Type == "Sword" and v.Name == "Cursed Dual Katana" then
                        return true
                    end
                end
                return false
            end
            function GetSGT()
                for _, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
                    if v.Type == "Gun" and v.Name == "Soul Guitar" then
                        return true
                    end
                end
                return false
            end
            function GetVH()
                for _, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
                    if v.Type == "Wear" and v.Name == "Valkyrie Helm" then
                        return true
                    end
                end
                return false
            end
            function GetMF()
                for _, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
                    if v.Type == "Material" and v.Name == "Mirror Fractal" then
                        return true
                    end
                end
                return false
            end
            local WeakMelee = {"BlackLeg","Electro","FishmanKarate"}
            local AllMelee = {"Superhuman","SharkmanKarate","DeathStep","ElectricClaw","Godhuman","DragonTalon","SanguineArt"}
            local MeleeString = "%s / 6"
            local dem = 0
            local CurrentSea = (Sea1 and "1") or  (Sea2 and "2") or  (Sea3 and "3")
            for i,v in pairs(AllMelee) do
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..v,true) == 1  then
                    dem = dem +1
                end
            end
            if dem == 7 then
                MeleeString = "Sanguine Art"
            elseif dem == 6 then
                MeleeString = "God Human"
            else
                MeleeString = MeleeString:format(tostring(dem))
            end
            
        
            function GetFruit()
                local mythicalfruit = {}
                for _, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
                    if v.Type == "Blox Fruit" and v.Rarity == 4 then
                        table.insert(mythicalfruit, v.Name)
                    end
                end
                if #mythicalfruit == 0 then
                    return "None"
                else
                    return table.concat(mythicalfruit, ',')
                end
            end
            function GetAwkSkill()
                local FruitName = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                local awk = {}
                if FruitName == "Buddha-Buddha" or FruitName == "Magma-Magma" or FruitName == "Dark-Dark" or FruitName == "Dough-Dough" or FruitName == "Phoenix-Phoenix" or FruitName == "Flame-Flame" or FruitName == "Quake-Quake" or FruitName == "Ice-Ice" or FruitName == "Rumble-Rumble" or FruitName == "Light-Light" or FruitName == "Sand-Sand" or FruitName == "Spider-Spider" then
                    for _, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")) do
                        if v.Awakened == true then
                            table.insert(awk, v.Key)
                        end
                    end
                    if #awk == 0 then
                        return "None"
                    else
                        return table.concat(awk, ',')
                    end
                else
                    return "None"
                end
            end
        
            function GetVRace()
                local RaceName = game:GetService("Players").LocalPlayer.Data.Race.Value
                if RaceName == "Human" then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Last Resort") or game.Players.LocalPlayer:FindFirstChild("Last Resort") then
                        return RaceName .. "V3"
                    end
                elseif RaceName == "Mink" then
                    -- Check Mink v3
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Agility") or game.Players.LocalPlayer:FindFirstChild("Agility") then
                        return RaceName .. "V3"
                    end
                elseif RaceName == "Fishman" then
                    -- Check Fishman v3
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Water Body") or game.Players.LocalPlayer:FindFirstChild("Water Body") then
                        return RaceName .. "V3"
                    end
                elseif RaceName == "Skypiea" then
                    -- Check Skypiea v3
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Heavenly Blood") or game.Players.LocalPlayer:FindFirstChild("Heavenly Blood") then
                        return RaceName .. "V3"
                    end
                elseif RaceName == "Ghoul" then
                    -- Check Ghoul v3
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Heightened Senses") or game.Players.LocalPlayer:FindFirstChild("Heightened Senses") then
                        return RaceName .. "V3"
                    end
                elseif RaceName == "Cyborg" then
                    -- Check Cyborg v3
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Energy Core") or game.Players.LocalPlayer:FindFirstChild("Energy Core") then
                        return RaceName .. "V3"
                    end
                end     
                if game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                    return RaceName .. "V2"
                end
                return RaceName .. "V1"
            end
            function GetDevilFruit()
                if game:GetService("Players").LocalPlayer.Data.DevilFruit.Value == "" then
                    return "None"
                else
                    return game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
                end
            end
            local crsea = ""
            if game.PlaceId == 4442272183 then
                crsea = "Sea 2"
            elseif game.PlaceId == 7449423635 then
                crsea = "Sea 3"
            else
                crsea = "Sea 1"
            end
            rq({Url="http://172.16.1.2:6969/trackstatsbf/set", Headers ={['Content-Type'] = 'application/json'}, Method = "POST", Body = game:GetService('HttpService'):JSONEncode({user=game.Players.LocalPlayer.Name,level=game:GetService("Players").LocalPlayer.Data.Level.Value,sea=crsea,beli=game:GetService("Players").LocalPlayer.Data.Beli.Value,frag=game:GetService("Players").LocalPlayer.Data.Fragments.Value,melee=MeleeString,cdk=GetCDK(),sgt=GetSGT(),vh=GetVH(),mf=GetMF(),race=GetVRace(),devilfruit=GetDevilFruit(),awkskill=GetAwkSkill(),inventoryfruit=GetFruit()})})

            rq({Url="http://10.0.2.2:6969/trackstatsbf/set", Headers ={['Content-Type'] = 'application/json'}, Method = "POST", Body = game:GetService('HttpService'):JSONEncode({user=game.Players.LocalPlayer.Name,level=game:GetService("Players").LocalPlayer.Data.Level.Value,sea=crsea,beli=game:GetService("Players").LocalPlayer.Data.Beli.Value,frag=game:GetService("Players").LocalPlayer.Data.Fragments.Value,melee=MeleeString,cdk=GetCDK(),sgt=GetSGT(),vh=GetVH(),mf=GetMF(),race=GetVRace(),devilfruit=GetDevilFruit(),awkskill=GetAwkSkill(),inventoryfruit=GetFruit()})})
        end
    end
end)
