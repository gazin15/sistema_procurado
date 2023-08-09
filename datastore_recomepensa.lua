local dataservice = game:GetService("DataStoreService")
local novadata = dataservice:GetDataStore("recompensa")

game.Players.PlayerAdded:Connect(function(plr)
	local sucess, playerdata = pcall(function()
	return novadata:GetAsync(plr.UserId)
		end)
	if sucess then
				local  estaprocurado = Instance.new("BoolValue")
				estaprocurado.Parent = plr
				estaprocurado.Name = "procuradobollean"
				estaprocurado.Value = false

				local instace = Instance.new("IntValue")
				instace.Parent = estaprocurado
				instace.Name = "recompensa"
				instace.Value = playerdata or 100
			print(playerdata)
		end
	end)
game.Players.PlayerRemoving:Connect(function(plr)
	local sucess, playerdata = pcall(function()
		return novadata:SetAsync(plr.UserId, plr.procuradobollean.recompensa.Value)
	end)
	if sucess then
	print(playerdata)
	else
		warn("erro")
end
	end)
