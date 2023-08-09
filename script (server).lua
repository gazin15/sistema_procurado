game.ReplicatedStorage.Procurado.PLayerEstaSendoProcurado.OnServerEvent:Connect(function(plr)
game.ReplicatedStorage.Procurado.deu_dano:FireClient(plr)
end)



local imagelabel = script.Parent.SurfaceGui.ScrollingFrame.TextLabel.procurado
local text = script.Parent.SurfaceGui.ScrollingFrame.TextLabel

game.ReplicatedStorage.Procurado.serverevent.OnServerEvent:Connect(function(plr, bol)
	local estaprocurado = plr:FindFirstChild('procuradobollean')
	estaprocurado.recompensa.Value = estaprocurado.recompensa.Value + 100
local podesetar = true

if podesetar then
estaprocurado.Value = true
local textrecomepnsa = text.recompensa
podesetar = false	
imagelabel.Visible = true
local thumtype = Enum.ThumbnailType.AvatarBust
local thumsize = Enum.ThumbnailSize.Size150x150
textrecomepnsa.Text = "$ " .. estaprocurado.recompensa.Value 
text.Text = plr.Name 
imagelabel.Image = game.Players:GetUserThumbnailAsync(plr.UserId, thumtype, thumsize)
local estaprocurado	= plr:FindFirstChild("procuradobollean")
game.ReplicatedStorage.Procurado.removerprocurado.OnServerEvent:Connect(function()
estaprocurado.Value =  false 
print("naoestaprocurado")
textrecomepnsa.Text =""
imagelabel.Image = ""
text.Text = ""
podesetar = true
end)
elseif podesetar == false then
	local novaimagen = text:Clone()
	novaimagen.Name = "novaimagem"
	local estaspawn = text.Parent:FindFirstChild("novaimagem")
	if estaspawn then
	novaimagen.Position = estaspawn.Position + UDim2.new(0,0,0.25,0)
	else
	novaimagen.Position = text.Position + UDim2.new(0,0,0.25,0)
	end
	novaimagen.recompensa.Text = "$ " .. estaprocurado.recompensa.Value
	novaimagen.Parent = text.Parent
	novaimagen.Text = plr.Name
	novaimagen.procurado.Visible = true
	novaimagen.procurado.Image =  game.Players:GetUserThumbnailAsync(plr.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size150x150)
		game.ReplicatedStorage.Procurado.removerprocurado.OnServerEvent:Connect(function()
			novaimagen:Destroy()	
		end)
	end
end)

