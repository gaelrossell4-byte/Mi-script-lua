local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local velocidad = 16
local incremento = 4
local minVel = 8
local maxVel = 50

local gui = script.Parent
local texto = gui:WaitForChild("VelocidadText")
local botonMas = gui:WaitForChild("BotonMas")
local botonMenos = gui:WaitForChild("BotonMenos")

-- Actualiza texto y velocidad
local function actualizarVelocidad()
	humanoid.WalkSpeed = velocidad
	texto.Text = "Velocidad: " .. velocidad
end

-- Subir velocidad
botonMas.MouseButton1Click:Connect(function()
	velocidad = math.clamp(velocidad + incremento, minVel, maxVel)
	actualizarVelocidad()
end)

-- Bajar velocidad
botonMenos.MouseButton1Click:Connect(function()
	velocidad = math.clamp(velocidad - incremento, minVel, maxVel)
	actualizarVelocidad()
end)

actualizarVelocidad()
