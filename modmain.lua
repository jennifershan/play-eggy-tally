local TEMPLATES = require "widgets/redux/templates"

AddClassPostConstruct("screens/snowbirdgamescreen", function(self)
    self.play_button_root = self.fixed_root:AddChild(TEMPLATES.StandardButton(function() end, "Have play-pair-of-birds Play Instead", {240, 36}))
    self.play_button_root:SetPosition(0, -320)
    self.play_button_root:SetOnClick(function()
        local function FindPair()
            for i = 0, 5 do
                for j = i + 1, 5 do  
                    if self.game_grid[i].tile_type == self.game_grid[j].tile_type then
                        return i, j
                    end
                end
            end
        end

        local NUM_COLUMNS = 3
        local function IndexToXY(index)
            local y_click = math.floor(index/NUM_COLUMNS)
            local x_click = index - (y_click * NUM_COLUMNS)
            return x_click, y_click
        end

        local index_1, index_2 = FindPair()
        self:OnTileClick(IndexToXY(index_1))
        self:OnTileClick(IndexToXY(index_2))
    end)
end)