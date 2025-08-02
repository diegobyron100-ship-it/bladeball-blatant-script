
-- Blade Ball Blatant Script (AUTO-SPAM + AUTO-PARRY + GUI + OP Ball Effect)
-- ⚠️ Este script es un ejemplo educativo. No garantiza funcionamiento en Blade Ball y puede violar las normas del juego.

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

-- GUI
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Position = UDim2.new(0, 100, 0, 100)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "⚡ BLADE BALL ⚡"
Title.TextColor3 = Color3.new(1,1,1)
Title.BackgroundColor3 = Color3.fromRGB(60,60,60)

local Spam = Instance.new("TextButton", Frame)
Spam.Position = UDim2.new(0, 10, 0, 40)
Spam.Size = UDim2.new(0, 180, 0, 30)
Spam.Text = "🔁 Auto Spam (Ultra Rápido)"

local Parry = Instance.new("TextButton", Frame)
Parry.Position = UDim2.new(0, 10, 0, 80)
Parry.Size = UDim2.new(0, 180, 0, 30)
Parry.Text = "🛡️ Auto Parry (Ultra Rápido)"

local Effect = Instance.new("TextButton", Frame)
Effect.Position = UDim2.new(0, 10, 0, 120)
Effect.Size = UDim2.new(0, 180, 0, 30)
Effect.Text = "🔥 Efecto más roto"

-- Funciones ficticias
Spam.MouseButton1Click:Connect(function()
    print("Auto Spam activado (ultra rápido)")
    -- Aquí iría el código de spam
end)

Parry.MouseButton1Click:Connect(function()
    print("Auto Parry activado (ultra rápido)")
    -- Aquí iría el código de parry
end)

Effect.MouseButton1Click:Connect(function()
    print("Efecto cambiado al más roto")
    -- Aquí iría el código del mejor efecto
end)
