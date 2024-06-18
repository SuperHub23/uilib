local GuiLibrary = {}

function GuiLibrary.CreateScreenGui(parent)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui")
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    return screenGui
end

function GuiLibrary.CreateFrame(parent, position, size, bgColor)
    local frame = Instance.new("Frame")
    frame.Parent = parent
    frame.BackgroundColor3 = bgColor or Color3.fromRGB(12, 42, 35)
    frame.BorderSizePixel = 0
    frame.Position = position or UDim2.new(0.5, 0, 0.5, 0)
    frame.Size = size or UDim2.new(0, 608, 0, 409)
    
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 36)
    uiCorner.Parent = frame
    
    return frame
end

function GuiLibrary.CreateLabel(parent, position, size, text, textColor, bgColor)
    local label = Instance.new("TextLabel")
    label.Parent = parent
    label.BackgroundColor3 = bgColor or Color3.fromRGB(12, 16, 255)
    label.BackgroundTransparency = 1.0
    label.Position = position or UDim2.new(0.5, 0, 0.1, 0)
    label.Size = size or UDim2.new(0, 200, 0, 43)
    label.Font = Enum.Font.SourceSans
    label.Text = text or "Label"
    label.TextColor3 = textColor or Color3.fromRGB(12, 16, 255)
    label.TextScaled = true
    label.TextWrapped = true
    
    return label
end

function GuiLibrary.CreateButton(parent, position, size, text, textColor, bgColor, onClick)
    local frame = Instance.new("Frame")
    frame.Parent = parent
    frame.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
    frame.BorderSizePixel = 0
    frame.Position = position or UDim2.new(0.5, 0, 0.5, 0)
    frame.Size = size or UDim2.new(0, 51, 0, 24)
    
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 36)
    uiCorner.Parent = frame
    
    local button = Instance.new("TextButton")
    button.Parent = frame
    button.BackgroundColor3 = bgColor or Color3.fromRGB(255, 255, 255)
    button.BorderSizePixel = 0
    button.Size = UDim2.new(1, 0, 1, 0)
    button.Font = Enum.Font.SourceSans
    button.Text = text or ""
    button.TextColor3 = textColor or Color3.fromRGB(0, 0, 0)
    button.TextSize = 14.0
    button.MouseButton1Click:Connect(onClick)
    
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 36)
    buttonCorner.Parent = button
    
    return button
end

return GuiLibrary
