
repeat wait() until game:IsLoaded()

local GuiService = game:GetService("GuiService")
GuiService.ErrorMessageChanged:Connect(function()
    local Code = GuiService:GetErrorCode().Value
    if Code >= Enum.ConnectionError.DisconnectErrors.Value then
        getgenv().StopUpdate = true
    end
end)
local rq = http_request or request or HttpPost or syn.request
task.spawn(function()
    while wait(1) do 
        if not getgenv().StopUpdate and game.Players.LocalPlayer.Parent and game.Players.LocalPlayer:FindFirstChild("PlayerScripts") then 
            local s,e = pcall(function() 
                writefile("InjectCheck.txt","RoiMuaYeuThuongDanDangDenVaThuyenCoDenMaiKBenConHayLoayHayChoDuocNamDoiBanTay")
            end)
            
        end
    end
end)
