-- telescope_config.lua

-- Require the telescope configuration
local conf = require "plugins.configs.telescope"

-- Set the prompt prefix and selection caret
conf.defaults.prompt_prefix = "🔍 "
conf.defaults.selection_caret = "👉 "

-- Set Picker settings

-- Configure the layout
conf.defaults.layout_config = {
        horizontal = {
            -- Position of the prompt and width settings
            prompt_position = "top",
            preview_width = 0.5,
            results_width = 0.8,
        },
        vertical = {
            -- Whether to mirror the layout vertically
            mirror = false,
        },
        -- General width and height settings
        width = 0.80,
        height = 0.80,
        -- Cutoff for previews
        preview_cutoff = 120,
}

-- Return the configured telescope
return conf