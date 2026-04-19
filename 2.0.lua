-- i am not making comments, you nerds.
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")


local screenGui = Instance.new("ScreenGui")
screenGui.Name = "WhiteOverlay"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.new(1, 1, 1) -- white
frame.BorderSizePixel = 0
frame.Parent = screenGui


local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 60)
button.Position = UDim2.new(0.5, -100, 0.5, -30) -- centered
button.Text = "Destroy"
button.TextScaled = true
button.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
button.Parent = frame
button.Transparency = 0

button.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
