local LocalPlayer = game:GetService("Players").LocalPlayer
local Cookies = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
local OriginalKeyUpValue = 0
local Anim = Instance.new("Animation" )
Anim.AnimationId = "rbxassetid://2788290270"
local CoreUI = Instance.new("ScreenGui")
CoreUI.Parent = game.CoreGui

local OldChar = LocalPlayer.Character

function StopAudio()
    OldChar.LowerTorso.BOOMBOXSOUND:Stop()
 end

 function stop(ID, Key)
     local cor = coroutine.wrap(function()
         wait(OldChar.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
         if OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
             StopAudio()
         end
     end)
     cor()
 end


 function play(ID, STOP, LMAO)
     if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
         local Tool = nil
         if OldChar:FindFirstChildOfClass("Tool") and LMAO == true then
             Tool = OldChar:FindFirstChildOfClass("Tool")
             OldChar:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
         end
         LocalPlayer.Backpack["[Boombox]"].Parent =
             OldChar
         game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
       OldChar["[Boombox]"].RequiresHandle = false
         if OldChar["[Boombox]"]:FindFirstChild("Handle") then
             OldChar["[Boombox]"].Handle:Destroy()
         end
        OldChar["[Boombox]"].Parent =
             LocalPlayer.Backpack
         LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
         if Tool ~= true then
             if Tool then
                 Tool.Parent = OldChar
             end
         end
         if STOP == true then
             OldChar.LowerTorso:WaitForChild("BOOMBOXSOUND")
             local cor = coroutine.wrap(function()
                 repeat wait() until OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OldChar.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                 OriginalKeyUpValue = OriginalKeyUpValue+1
                 stop(ID, OriginalKeyUpValue)
             end)
             cor()
         end
     end
 end

game:GetService("Players").LocalPlayer.Chatted:Connect(function(arg)
    if arg == "Shazam!" then
repeat wait();
until game:GetService('Players').LocalPlayer.Character:FindFirstChild('FULLY_LOADED_CHAR');
local ReplicatedStorage = game:GetService('ReplicatedStorage');
local Lightning = Instance.new('Part');
local Player = game:GetService('Players').LocalPlayer;
local Position = Player.Character.HumanoidRootPart.CFrame;
local l = Instance.new("Part")
l.Parent = workspace
l.BrickColor = BrickColor.new("Daisy orange")
l.Material = "Neon"
l.Anchored = true
l.CanCollide = false
l.Size = Vector3.new(10, 2047, 10.924);
l.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
l.Orientation = Vector3.new(32, 0, 0)
local Sound = Instance.new('Sound', workspace);
Sound.PlaybackSpeed = 1;
Sound.Volume = 0;
Sound.SoundId = 'rbxassetid://821439273';
Sound.PlayOnRemove = true;
play(821439273, true, true)
Sound:Destroy();
for i = 1, 10 do
    wait()
    l.Transparency = l.Transparency + 0.1
end
if Player.Character:FindFirstChildOfClass('ShirtGraphic') then
    Player.Character:FindFirstChildOfClass('ShirtGraphic'):Destroy()
end
if Player.Character:FindFirstChildOfClass('Shirt') then
    Player.Character:FindFirstChildOfClass('Shirt').ShirtTemplate = 'rbxassetid://5453348825';
else
    local Shirt = Instance.new('Shirt');
    Shirt.Parent = Player.Character;
    Shirt.ShirtTemplate = 'rbxassetid://5453348825';
end
if Player.Character:FindFirstChild('Pants') then
    Player.Character:FindFirstChildOfClass('Pants').PantsTemplate = 'rbxassetid://5453350139';
else
    local Pants = Instance.new('Pants');
    Pants.Parent = Player.Character;
    Pants.PantsTemplate = 'rbxassetid://5453350139';
end;
wait()
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Fly"
tool.RequiresHandle = false

repeat wait() 
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 5000
local speed = 5000 
local hover = Instance.new("Animation", game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))hover.Name="Hover"hover.AnimationId="rbxassetid://3541114300"
local fly = Instance.new("Animation", game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))fly.Name="Fly"fly.AnimationId = "rbxassetid://3541044388"

function Fly() 
    local bg = Instance.new("BodyGyro", torso) 
    bg.P = 9e4 
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
    bg.cframe = torso.CFrame 
    local bv = Instance.new("BodyVelocity", torso) 
    bv.velocity = Vector3.new(0,0.1,0) 
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
    repeat wait() 
        plr.Character.Humanoid.PlatformStand = true 
        if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then 
            speed = speed+.0+(speed/maxspeed) 
            if speed > maxspeed then 
                speed = maxspeed 
            end 
        elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then 
            speed = speed-5
            if speed > 5 then 
                speed = -2 
            end 
        end 
        if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then 
            bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
            lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
        elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then 
            bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
        else 
            bv.velocity = Vector3.new(0,0.1,0) 
        end 
        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
    until not flying 
    for _, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks() do
        if (v.Animation.AnimationId:match("rbxassetid")) then
            v:Stop()
        end
    end
    ctrl = {f = 0, b = 0, l = 0, r = 0} 
    lastctrl = {f = 0, b = 0, l = 0, r = 0} 
    speed = 5 
    bg:Destroy() 
    bv:Destroy() 
    plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
    if key:lower() == "w" then
        ctrl.f = 10
        wait()
        if flying == true then
            for _, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks() do
                if not (v.Animation.AnimationId:match(fly.AnimationId)) then
                    v:Stop()
                end
            end
            plr.Character.Humanoid:LoadAnimation(fly):Play()
        end
    elseif key:lower() == "s" then
        ctrl.b = -10
        wait()
        if flying == true then
            for _, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks() do
                if not (v.Animation.AnimationId:match(fly.AnimationId)) then
                    v:Stop()
                end
            end
            plr.Character.Humanoid:LoadAnimation(fly):Play()
        end
    elseif key:lower() == "a" then
        ctrl.l = -10
        wait()
        if flying == true then
            for _, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks() do
                if not (v.Animation.AnimationId:match(fly.AnimationId)) then
                    v:Stop()
                end
            end
            plr.Character.Humanoid:LoadAnimation(fly):Play()
        end
    elseif key:lower() == "d" then
        ctrl.r = 10
        wait()
        if flying == true then
            for _, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks() do
                if not (v.Animation.AnimationId:match(fly.AnimationId)) then
                    v:Stop()
                end
            end
            plr.Character.Humanoid:LoadAnimation(fly):Play()
        end
    end 
end)
repeat wait()
until mouse.KeyDown:connect(function(key)
    mouse.KeyUp:connect(function(key)
        if key:lower() == "w" then
            ctrl.f = 0
            wait()
            if flying == true then
                for _, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks() do
                    if not (v.Animation.AnimationId:match(hover.AnimationId)) then
                        v:Stop()
                    end
                end
                plr.Character.Humanoid:LoadAnimation(hover):Play()
            end
        elseif key:lower() == "s" then 
            ctrl.b = 0
            wait()
            if flying == true then
                for _, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks() do
                    if not (v.Animation.AnimationId:match(hover.AnimationId)) then
                        v:Stop()
                    end
                end
                plr.Character.Humanoid:LoadAnimation(hover):Play()
            end
        elseif key:lower() == "a" then
            ctrl.l = 0
        elseif key:lower() == "d" then 
            ctrl.r = 0
        end 
    end)
end)
Fly()


function OnEquipped()
flying = true
play(7812509223, true, true)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
for _, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks() do
    if not (v.Animation.AnimationId:match(hover.AnimationId)) then
        v:Stop()
    end
end
plr.Character.Humanoid:LoadAnimation(hover):Play()
Fly() 
end

function OnUnequipped()
    if flying then flying = false end
end

tool.Equipped:connect(OnEquipped)
tool.Unequipped:connect(OnUnequipped)
wait()
local tool1 = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool1.Name = "Hearing"
tool1.RequiresHandle = false
wait()
end
end)

game:GetService("Players").LocalPlayer.Chatted:Connect(function(arg)
    if arg == "TUBULAR!" then
if game.SoundService.RespectFilteringEnabled == false then
game:GetService("Workspace").MAP["EVIL_SPECIAL"].Sound:Play()
end
local TweenService = game:GetService("TweenService")
local gate = game.Workspace.MAP.EVIL_SPECIAL
local buttonState = 1  -- Determines button direction; -1 means it will press in, 1 means it will pop out
local inTween = false

-- Customizable variables
local TWEEN_TIME = 1.5
local TWEEN_MOVE_DISTANCE = 23

-- Tween variables
local buttonTweenInfo = TweenInfo.new(
    TWEEN_TIME,  -- Time
    Enum.EasingStyle.Quad,  -- EasingStyle
    Enum.EasingDirection.Out  -- EasingDirection
)

local function buttonPress()
    -- If the button is tweening, prevent it from being used again
    if inTween == true then
        return
    end

    -- Calculate new CFrame for button position
    local offsetCFrame = CFrame.new(0, TWEEN_MOVE_DISTANCE * buttonState, 0)
    local newCFrame = gate.CFrame:ToWorldSpace(offsetCFrame)

    -- Create a tween and play it
    local tweenButton = TweenService:Create(gate, buttonTweenInfo, {CFrame = newCFrame})
    tweenButton:Play()
    inTween = true

    -- On tween completion, make button usable again
    tweenButton.Completed:Connect(function()
        inTween = false
        -- Invert the button state
        buttonState = -1
    end)
end

buttonPress()
        end 
end)

game:GetService("Players").LocalPlayer.Chatted:Connect(function(arg)
    if arg == "HACKERS_" then
local TweenService = game:GetService("TweenService")
local drawbridge = game.Workspace.MAP.SPECIAL_BRIDGE
local buttonState = -1
local inTween = false

-- Customizable variables
local TWEEN_TIME = 1.5
local TWEEN_MOVE_DISTANCE = 50

-- Tween variables
local buttonTweenInfo = TweenInfo.new(
    TWEEN_TIME,  -- Time
    Enum.EasingStyle.Quad,  -- EasingStyle
    Enum.EasingDirection.Out  -- EasingDirection
)

local function voice()

end
local function drawbridge1()
    if inTween == true then
        return
    end
    local Goals = {Size=Vector3.new(100, 1.25, 11.5)} -- atm makes bridge go back alot more than it needs to will fix later

    local tweenButton = TweenService:Create(drawbridge, buttonTweenInfo, Goals)
    tweenButton:Play()
    inTween = true


    tweenButton.Completed:Connect(function()
        inTween = false
        buttonState = buttonState * -1
    end)
end

drawbridge1()
    end
end)

enableGUI()
--Frame.FindServer.MouseButton1Click:connect(function()
--	MainEvent:FireServer("FindServer", Frame.PlayerName.Text)
--end)
--Frame.JoinServer.MouseButton1Click:connect(function()
--	MainEvent:FireServer("JoinServer", Frame.ServerId.Text)
--end)
local u5 = false
UserInputService.InputBegan:connect(function(p3, p4)
    if not p4 and p3.UserInputType == Enum.UserInputType.Keyboard and p3.KeyCode == Enum.KeyCode.B and u5 == false then
        u5 = true
        if ScreenGui.Parent == nil then
            enableGUI()
        else
            ScreenGui.Parent = nil
            for v16, v17 in pairs(Main:GetChildren()) do
                v17:Destroy()
            end
        end
        wait(0.2)
        u5 = false
    end
end)
local v18 = {}
local u22 = {}
while wait() do
    if ScreenGui.Parent == Plr.PlayerGui then
        for v19 = #v18, 1, -1 do
            v18[v19]:Destroy()
            table.remove(v18, v19)
        end
        for v20, v21 in pairs(game.Players:GetChildren()) do
            pcall(function()
                local l__Character__22 = v21.Character
                if CurrentCamera.CFrame.lookVector:Dot((l__Character__22.LowerTorso.Position - CurrentCamera.CFrame.p).unit) > 0 then
                    local v23 = CurrentCamera:WorldToScreenPoint(l__Character__22.UpperTorso.Position)
                    local v24 = Instance.new("TextLabel")
                    v24.Name = l__Character__22.Name
                    local v25 = game.Players:GetPlayerFromCharacter(l__Character__22)
                    v24.Text = l__Character__22.Name
                    v24.TextSize = 20
                    v24.Font = Enum.Font.ArialBold
                    v24.TextColor3 = (CurrentCamera.CFrame.p - l__Character__22.LowerTorso.Position).magnitude < 75 and Color3.fromRGB(137, 211, 205) or Color3.new(1, 0, 0)
                    v24.Position = UDim2.new(0, v23.x, 0, v23.y)
                    if v21:FindFirstChild("DataFolder") and v21.DataFolder:FindFirstChild("Information") and (v21.DataFolder.Information:FindFirstChild("Crew") and v21.DataFolder.Information.Crew.Value and tonumber(v21.DataFolder.Information.Crew.Value)) then
                        u22[v21.Name] = u22[v21.Name] or game:GetService("GroupService"):GetGroupInfoAsync(tonumber(v21.DataFolder.Information.Crew.Value)).Name
                        v24.Text = v24.Text .. "\n" .. u22[v21.Name]
                    end
                    v24.Parent = ScreenGui
                    table.insert(v18, v24)
                end
            end)
        end
    end
end
