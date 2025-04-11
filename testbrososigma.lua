local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Rebirth Champions: Ultimate | Stratum",
   Icon = "scroll-text", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading Stratum",
   LoadingSubtitle = "by Sub2BK",
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Stratum Hub", -- Create a custom folder for your hub/game
      FileName = "Stratum Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Stratum | Keysystem",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "StratumKeysystem", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Test"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Script Has Been Loaded!",
   Content = "Enjoy it",
   Duration = 5,
   Image = "monitor-up",
})
task.wait(0.5)
Rayfield:Notify({
   Title = "Stratum Discord",
   Content = "https://discord.gg/XKxQwBd2zT",
   Duration = 5,
   Image = "wallet-cards",
})

local MainTab = Window:CreateTab("Main", "earth") -- Title, Image
local EggTab = Window:CreateTab("Eggs", "egg") -- Title, Image
local FarmTab = Window:CreateTab("Farm", "tractor") -- Title, Image

----------------------------------------------------------------------
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = ReplicatedStorage:WaitForChild("Packages", 9e9):WaitForChild("Knit", 9e9)
local Services = Knit:WaitForChild("Services", 9e9)
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local originalCFrame = hrp.CFrame
local newCFrame = CFrame.new(-293.3112487792969, 4.491495132446289, 15.995078086853027)
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
----------------------------------------------------------------------

local Section = MainTab:CreateSection("Main Stuff")
local AutoClicker = false

local Toggle = MainTab:CreateToggle({
  Name = "Auto Clicker",
  CurrentValue = false,
  Flag = "Toggle1", -- Ensure this flag is unique if using configuration saving
  Callback = function(Value)
    if Value then
      AutoClicker = true
      spawn(function()
        while AutoClicker do
          local args = {}
          local services = game:GetService("ReplicatedStorage"):WaitForChild("Packages", 9e9):WaitForChild("Knit", 9e9):WaitForChild("Services", 9e9):GetChildren()

          for i = 1, 39 do
            local success, err = pcall(function()
              local target = services[i]
              if target and target:FindFirstChild("RE") then
                local reChildren = target.RE:GetChildren()
                if reChildren[3] then
                  reChildren[3]:FireServer(unpack(args))
                end
              end
            end)

            if not success then
            end
          end

          task.wait(0.01)
        end
      end)
    else
      AutoClicker = false
    end
  end,
})


      hrp.CFrame = newCFrame
      task.wait(1) 

      hrp.CFrame = originalCFrame

local AutoRebirthBest = false

local Toggle = MainTab:CreateToggle({
    Name = "Auto Rebirth |Best Unlocked|",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            AutoRebirthBest = true
            spawn(function()
                while AutoRebirthBest do
                    local upgradeAmountLabel = player.PlayerGui
                        :WaitForChild("MainUI"):WaitForChild("Menus"):WaitForChild("UpgradesFrame"):WaitForChild("Main"):WaitForChild("List"):WaitForChild("Holder"):WaitForChild("Upgrades"):WaitForChild("RebirthButtons"):WaitForChild("Main"):WaitForChild("UpgradeAmount")

                    local textValue = upgradeAmountLabel.Text
                    local extractedValue = tonumber(textValue:match("%((%d+)/"))
                    if not extractedValue then
                        extractedValue = 1
                    end

                    local offset = 3
                    local finalValue = extractedValue + offset
                    local args = { [1] = finalValue }

                    local services = ReplicatedStorage:WaitForChild("Packages", 9e9):WaitForChild("Knit", 9e9):WaitForChild("Services", 9e9):GetChildren()

                    for i = 1, 39 do
                        local success, err = pcall(function()
                            local remoteFunction = services[i]
                            if remoteFunction then
                                remoteFunction = remoteFunction:FindFirstChild("RF")
                                if remoteFunction then
                                    local method = remoteFunction:FindFirstChild("jag känner en bot, hon heter anna, anna heter hon")
                                    if method then
                                        method:InvokeServer(unpack(args))
                                    end
                                end
                            end
                        end)

                        if not success then
                        end
                    end

                    task.wait(0.1)
                end
            end)
        else
            AutoRebirthBest = false
        end
    end,
})

local Section = MainTab:CreateSection("Auto Stuff")
local AutoClaimPlaytimeRewards = false

local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Playtime Rewards",
    CurrentValue = false,
    Flag = "Toggle3",
    Callback = function(Value)
        AutoClaimPlaytimeRewards = Value
        if Value then
            spawn(function()
                while AutoClaimPlaytimeRewards do
                    for argValue = 1, 12 do
                        if not AutoClaimPlaytimeRewards then break end

                        local args = { [1] = argValue }
                        local services = Services:GetChildren()

                        for i = 13, 39 do
                            pcall(function()
                                local remoteService = services[i]
                                if remoteService then
                                    local rf = remoteService:FindFirstChild("RF")
                                    if rf then
                                        local method = rf:GetChildren()[3]
                                        if method then
                                            method:InvokeServer(unpack(args))
                                        end
                                    end
                                end
                            end)
                        end

                        task.wait(0.2) -- 1 second delay between values
                    end
                end
            end)
        end
    end,
})

local AutoClaimAchiev = false

local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Achievements",
    CurrentValue = false,
    Flag = "Toggle4",
    Callback = function(Value)
        if Value then
            AutoClaimAchiev = true
            spawn(function()
                local statList = {
                    "auraRolls",
                    "rebirths",
                    "eggsOpened",
                    "timePlayed",
                    "playtimeRewards",
                    "fruitsCollected",
                    "treesDestroyed",
                    "fallingStarsCollected"
                }

                while AutoClaimAchiev do
                    for _, stat in ipairs(statList) do
                        local args = { [1] = stat }

                        for i = 13, 39 do
                            local success, _ = pcall(function()
                                local remoteFunction = Services:GetChildren()[i]
                                if remoteFunction then
                                    local rf = remoteFunction:FindFirstChild("RF")
                                    if rf then
                                        local method = rf:GetChildren()[8] -- assuming this index is stable
                                        if method then
                                            method:InvokeServer(unpack(args))
                                        end
                                    end
                                end
                            end)
                        end

                        task.wait() -- Delay 1s between stats
                    end
                end
            end)
        else
            AutoClaimAchiev = false
        end
    end,
})

local AutoClaimindexRewards = false

local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Index Rewards",
    CurrentValue = false,
    Flag = "Toggle5", -- Ensure unique flag for saving
    Callback = function(Value)
        if Value then
            AutoClaimindexRewards = true
            spawn(function()
                while AutoClaimindexRewards do
                    for i = 1, 12 do
                        local args = { [1] = i }
                        local remote = game:GetService("ReplicatedStorage"):WaitForChild("Packages", 9e9):WaitForChild("Knit", 9e9):WaitForChild("Services", 9e9):GetChildren()[8]WaitForChild("RF", 9e9):WaitForChild("jag känner en bot, hon heter anna, anna heter hon", 9e9)
                        
                        remote:InvokeServer(unpack(args))

                        task.wait(1) -- Small delay between requests
                    end
                    task.wait(0.5)
                end
            end)
        else
            AutoClaimindexRewards = false
        end
    end,
})

local AutoClaimPrestige = false

local ToggleRemote = MainTab:CreateToggle({
    Name = "Auto Claim Prestige",
    CurrentValue = false,
    Flag = "Toggle6",  -- Ensure this flag is unique if using config saving
    Callback = function(Value)
        AutoClaimPrestige = Value
        if AutoClaimPrestige then
            spawn(function()
                while AutoClaimPrestige do
                    local args = {}  -- Empty arguments
                    local services = game:GetService("ReplicatedStorage")
                        :WaitForChild("Packages", 9e9)
                        :WaitForChild("Knit", 9e9)
                        :WaitForChild("Services", 9e9)
                        :GetChildren()
                        
                    for i = 13, 39 do
                        pcall(function()
                            local remoteService = services[i]
                            if remoteService then
                                local rf = remoteService:WaitForChild("RF", 9e9)
                                local method = rf:WaitForChild("jag känner en bot, hon heter anna, anna heter hon", 9e9)
                                method:InvokeServer(unpack(args))
                            end
                        end)
                    end

                    task.wait(0.1) -- Adjust delay between cycles as needed
                end
            end)
        end
    end,
})

local Section = MainTab:CreateSection("Auto Minihest")
local function simulateKeyHold(key, duration)
    VirtualInputManager:SendKeyEvent(true, key, false, game)
    wait(duration)
    VirtualInputManager:SendKeyEvent(false, key, false, game)
end

local function holdE()
    simulateKeyHold(Enum.KeyCode.E, 2.5)
end

local Maps = { "Spawn", "Farm", "Desert", "Nuclear", "Atlantis", "City", "Cave", "Kingdom", "Volcano" }

local Button = MainTab:CreateButton({
    Name = "Claim All MiniChests |Method 1|",
    Callback = function()
        spawn(function()
            for _, mapName in ipairs(Maps) do
                local map = workspace:FindFirstChild("Game") and workspace.Game:FindFirstChild("Maps") and workspace.Game.Maps:FindFirstChild(mapName)
                if map then
                    local miniChests = map:FindFirstChild("MiniChests")
                    if miniChests then
                        for _, chestModel in ipairs(miniChests:GetChildren()) do
                            local touchPart = chestModel:FindFirstChild("Touch", true)
                            if touchPart then
                                hrp.CFrame = CFrame.new(touchPart.Position + Vector3.new(0, 2, 0)) -- Teleport slightly above
                                wait(1)
                                holdE()
                                wait(2)
                            end
                        end
                    end
                end
            end
        end)
    end,
})

local function simulateKeyHold(key, duration)
    VirtualInputManager:SendKeyEvent(true, key, false, game)
    wait(duration)
    VirtualInputManager:SendKeyEvent(false, key, false, game)
end

local function holdE()
    simulateKeyHold(Enum.KeyCode.E, 2.5)
end

local Maps = { "Spawn", "Farm", "Desert", "Nuclear", "Atlantis", "City", "Cave", "Kingdom", "Volcano" }

local Button = MainTab:CreateButton({
    Name = "Claim All MiniChests |Method 2|",
    Callback = function()
        spawn(function()
            for _, mapName in ipairs(Maps) do
                local map = workspace:FindFirstChild("Game") and workspace.Game:FindFirstChild("Maps") and workspace.Game.Maps:FindFirstChild(mapName)
                if map then
                    local miniChests = map:FindFirstChild("MiniChests")
                    if miniChests then
                        for _, chestModel in ipairs(miniChests:GetChildren()) do
                            local touchPart = chestModel:FindFirstChild("Touch", true)
                            if touchPart then
                                chestModel:SetPrimaryPartCFrame(hrp.CFrame * CFrame.new(0, 3, 0)) -- Slightly above player

                                wait(1) -- Small delay before simulating the key press
                                holdE() -- Simulate holding 'E'
                                wait(2) -- Wait after holding 'E'
                            end
                        end
                    end
                end
            end
        end)
    end,
})

local Label = MainTab:CreateLabel("Must All Worlds Be Unlocked To Avoid Bugs!", "circle-alert", Color3.fromRGB(35,35,255), false) -- Title, Icon, Color, IgnoreTheme
----------------------------------------------------------------------

local Section = EggTab:CreateSection("Egg Event")
local Auto15M = false

local Toggle = EggTab:CreateToggle({
    Name = "Auto Open 15M Egg",
    CurrentValue = false,
    Flag = "Toggle7", -- Ensure the flag is unique if you're using configuration saving
    Callback = function(Value)
        Auto15M = Value
        if Auto15M then
            spawn(function()
                while Auto15M do
                    local args = { [1] = "15M", [2] = 2 }
                    local services = game:GetService("ReplicatedStorage")
                        :WaitForChild("Packages", 9e9)
                        :WaitForChild("Knit", 9e9)
                        :WaitForChild("Services", 9e9)
                        :GetChildren()
                        
                    for i = 13, 39 do
                        pcall(function()
                            local remoteService = services[i]
                            if remoteService then
                                local re = remoteService:FindFirstChild("RE")
                                if re then
                                    local reChildren = re:GetChildren()
                                    if reChildren[3] then
                                        reChildren[3]:FireServer(unpack(args))
                                    end
                                end
                            end
                        end)
                    end
                    task.wait(0.05) -- Adjust delay between each full cycle if needed
                end
            end)
        end
    end,
})

local Section = EggTab:CreateSection("World Eggs")
local selectedEgg = "Volcano" -- Default selected egg

local Dropdown = EggTab:CreateDropdown({
    Name = "Select Egg",
    Options = {"Basic", "Forest", "Farm", "Desert", "Nuclear", "Atlantis", "Kingdom", "City", "Hacker", "Cave", "Volcano"}, -- Add more eggs here
    CurrentOption = {"Volcano"},
    MultipleOptions = false,
    Flag = "Dropdown1",
    Callback = function(Options)
        selectedEgg = Options[1]
    end,
})

local AutoEggOpen = false

local Toggle = EggTab:CreateToggle({
    Name = "Auto Open Selected Egg",
    CurrentValue = false,
    Flag = "Toggle8",
    Callback = function(Value)
        if Value then
            AutoEggOpen = true
            spawn(function()
                while AutoEggOpen do
                    local args = {
                        [1] = selectedEgg,
                        [2] = 2
                    }

                    local services = game:GetService("ReplicatedStorage")
                        :WaitForChild("Packages", 9e9)
                        :WaitForChild("Knit", 9e9)
                        :WaitForChild("Services", 9e9):GetChildren()

                    for i = 13, 39 do
                        local success, err = pcall(function()
                            local remoteEvent = services[i]:FindFirstChild("RE")
                            if remoteEvent then
                                local method = remoteEvent:GetChildren()[3]
                                if method then
                                    method:FireServer(unpack(args))
                                end
                            end
                        end)
                    end

                    task.wait(0.05)
                end
            end)
        else
            AutoEggOpen = false
        end
    end,
})

local Label = EggTab:CreateLabel("Some Eggs Might Not Opening, Since You Doesnt Open The World For It!", "circle-alert", Color3.fromRGB(35,35,255), false) -- Title, Icon, Color, IgnoreTheme
----------------------------------------------------------------------

local Section = FarmTab:CreateSection("Farm Stuff")
local selectedFarms = {}

local Dropdown = FarmTab:CreateDropdown({
    Name = "Select Farm Fruit Types",
    Options = {"carrot", "grape", "pineapple", "strawberry", "apple"},
    CurrentOption = {"carrot"},  -- Default selection
    MultipleOptions = true,
    Flag = "Dropdown2",
    Callback = function(options)
        selectedFarms = options  -- Update the global selection
        print("Selected farms: " .. table.concat(selectedFarms, ", "))
    end,
})

local AutoClaimFruits = false

local Toggle = FarmTab:CreateToggle({
    Name = "Auto Claim Selected Fruits",
    CurrentValue = false,
    Flag = "Toggle9",
    Callback = function(Value)
        AutoClaimFruits = Value
        if AutoClaimFruits then
            spawn(function()
                while AutoClaimFruits do
                    for _, farmName in ipairs(selectedFarms) do
                        if not AutoClaimFruits then break end
                        
                        local finalFarmName = farmName .. "Farm"
                        local args = { [1] = finalFarmName, [2] = 2 }
                        
                        local services = ReplicatedStorage
                            :WaitForChild("Packages", 9e9)
                            :WaitForChild("Knit", 9e9)
                            :WaitForChild("Services", 9e9)
                            :GetChildren()
                        
                        for i = 13, 39 do
                            pcall(function()
                                local remoteService = services[i]
                                if remoteService then
                                    local rf = remoteService:WaitForChild("RF", 9e9)
                                    local remoteFunction = rf:GetChildren()[2]
                                    if remoteFunction then
                                        remoteFunction:FireServer(unpack(args))
                                    end
                                end
                            end)
                        end
                        task.wait(1)
                    end
                    task.wait(0.5)
                end
            end)
        end
    end,
})
