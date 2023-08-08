local player = game.Players.LocalPlayer
local tempo = 0
local adicionar = 180

game.ReplicatedStorage.Procurado.gambiarrakkk.OnClientEvent:Connect(function()
	tempo = tempo + adicionar
	if tempo > 50 then
	adicionar = 20
	end

	local verificar = game.Players.LocalPlayer.PlayerGui:FindFirstChild("procurado")
if not verificar then

--criar uma gui (wanted), se quiser mudar a gui mude aq
local instancegui = Instance.new("ScreenGui")
instancegui.Name = "procurado"
instancegui.Parent = game.Players.LocalPlayer.PlayerGui
local text = Instance.new("TextLabel")
text.Parent = instancegui
text.Size = UDim2.new(0, 200,0, 50)
text.Visible = true
text.Position = UDim2.new(0.700, 0,0.74, 0)
text.BackgroundColor3 = Color3.fromHSV(0, 0, 0)
text.BackgroundTransparency = (0.5)
text.TextColor3 =  Color3.fromRGB(255, 0, 0)
text.TextScaled = true

--procurado serverevent
game.ReplicatedStorage.Procurado.serverevent:FireServer(player)	
repeat
text.Text = "You are being wanted for " .. tempo .. " seconds"
wait(1)
tempo = tempo - 1
until tempo == 0
if tempo == 0 then

--excluir gui
game.ReplicatedStorage.Procurado.removerprocurado:FireServer()
instancegui:Destroy()
text:Destroy()
		end
	end
end)
