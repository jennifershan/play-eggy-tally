local TEMPLATES = require "widgets/redux/templates"

AddClassPostConstruct("screens/snowbirdgamescreen", function(self)
    self.play_button_root = self.fixed_root:AddChild(TEMPLATES.StandardButton(function() end, "Have play-pair-of-birds Play Instead", {240, 36}))
    self.play_button_root:SetPosition(0, -320)
    self.play_button_root:SetOnClick(function() end)
end)