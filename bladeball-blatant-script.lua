-- Blade Ball Script Blatant Mode - by diegobyron100
-- Visita github.com/diegobyron100 para más scripts

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "BladeBall Blatant", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "bladeballblatant"})

local Tab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998", PremiumOnly = false})

Tab:AddToggle({
	Name = "⚡ Auto Parry (Ultra Rápido)",
	Default = true,
	Callback = function(state)
        _G.AutoParry = state
        while _G.AutoParry do
            local args = {[1] = true}
            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("ParryButtonPress"):FireServer(unpack(args))
            task.wait(0.01) -- Parry cada 0.01 segundos (inhumano)
        end
	end    
})

Tab:AddToggle({
	Name = "🔥 Auto Spam (Infinito)",
	Default = true,
	Callback = function(state)
        _G.AutoSpam = state
        while _G.AutoSpam do
            local args = {[1] = true}
            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("ParryButtonPress"):FireServer(unpack(args))
            task.wait(0.01) -- Disparo rápido de parry
        end
	end
})

Tab:AddDropdown({
	Name = "🎯 Elegir Efecto de Pelota",
	Default = "Default",
	Options = {"Default", "Lightning", "Shadow", "Fire", "Hearts", "Neon"},
	Callback = function(value)
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeBallEffect"):FireServer(value)
	end
})

OrionLib:Init()
