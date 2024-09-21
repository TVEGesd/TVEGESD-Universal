local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
 
local Window = Rayfield:CreateWindow({
    Name = "TVEGesd Universal",
    LoadingTitle = "Universal",
    LoadingSubtitle = "by TVEGesd",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "TVEGesd Universal"
    },
    Discord = {
       Enabled = True,
       Invite = "https://discord.gg/NhpCbgpxHQ", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Enter key from discord",
       Subtitle = "Key System",
       Note = "Join discord https://discord.gg/NhpCbgpxHQ",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"28^93kGsaOhOOgdjdsaf"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })
 
 local MainTab = Window:CreateTab("Home", nil) -- Title, Image
 local MainSection = MainTab:CreateSection("Main")
 Rayfield:Notify({
    Title = "Executed successfully",
    Content = "This is new and may be detected",
    Duration = 2,
    Image = nil,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Okay!",
          Callback = function()
          print("The user tapped Okay!")
       end
    },
 },
 })
 
 local Button = MainTab:CreateButton({
    Name = "Infinite Jump",
    Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Jump.txt"))()
    end,
 })
 
 local Slider = MainTab:CreateSlider({
    Name = "Walkspeed",
    Range = {0, 1000},
    Increment = 10,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
    end,
 })
 local Button = MainTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
 })
 
 local MainTab = Window:CreateTab("Misc", nil) -- Title, Image
 local MainSection = MainTab:CreateSection("Misc items")
 
 local Button = MainTab:CreateButton({
    Name = "Blox Fruits",
    Callback = function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/Basicallyy/Basicallyy/main/MinGamingV4.lua")()
    end,
    local Button = MainTab:CreateButton({
      Name = "BedWars (coming soon)",
      Callback = function()
         
      end,
   })
 })
 local Button = MainTab:CreateButton({
   Name = "Phantom Forces (Coming soon)",
   Callback = function()
      
   end,
})

local MainTab = Window:CreateTab("Credits", Nil) -- Title, Image
local Section = MainTab:CreateSection("Credits")

local Paragraph = MainTab:CreateParagraph({Title = "Credits", Content = "Developer - TVEGesd.    Owner - TVEGesd."})
