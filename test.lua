local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Name", "RJTheme3")

local Tab = Window:NewTab("TabName")

local Section = Tab:NewSection("Section Name")

Section:NewButton("Button text", "ButtonInfo", function()
	-- 
	print("text")

end)

Section:NewSlider("SPEED", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)	
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("GRAVITY", "SliderInfo", 500, 0, function(x) -- 500 (Макс. значение) | 0 (Мин. значение)	
	game.Workspace.Gravity = x
end)

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.C, function()
	-- ESP
	while wait(0.5) do
	for i, x in ipairs(workspace:GetDescendants()) do
		if x:FindFirstChild("Humanoid") then
			if not x:FindFirstChild("esp") then
				if x ~= game.Players.LocalPlayer.Character then
					local esp = Instance.new("BoxHandleAdornment",x)
					esp.Adornee = x
					esp.ZIndex = 0
					esp.Size = Vector3.new(4, 5, 1)
					esp.Transparency = 0.65
					esp.Color3 = Color3.fromRGB(255,48,48)
					esp.AlwaysOnTop = true
					esp.Name = "esp"
				end
			end
		end
	end
end

end)
