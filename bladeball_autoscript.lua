
-- Blade Ball - Script personalizado (auto-activado)
-- Hecho para celular (ejecuta esto desde tu ejecutor con loadstring)

-- Configuración
getgenv().AutoParry = true
getgenv().AutoSpam = true
getgenv().ParryMode = "Blatant" -- Opción: "Legit" o "Blatant"
getgenv().BallEffect = "Rage" -- Puedes cambiar a: "Heaven", "Ice", "Lightning", etc.

-- Script base
loadstring(game:HttpGet("https://raw.githubusercontent.com/diegobyron100-ship-it/bladeball-blatant-script/main/main.lua"))()
