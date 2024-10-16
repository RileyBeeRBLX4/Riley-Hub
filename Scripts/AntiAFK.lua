-- Open Source
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Riley Hub")

local Main = PhantomForcesWindow:NewSection("Main")

Main:CreateToggle("Anti AFK", function(Value)
    getgenv().AntiAFK = Value
    local VirtualUser = game:GetService("VirtualUser")
    
    if Value then
        game:GetService("Players").LocalPlayer.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
            game:GetService("StarterGui"):SetCore("SendNotification", { Title = "Anti AFK", Text = "Anti AFK Has Been Enabled", Duration = 5 })
            wait(2)
            game:GetService("StarterGui"):SetCore("SendNotification", { Title = "Anti AFK", Text = "Status: Active", Duration = 5 })
        end)
    end
end)
