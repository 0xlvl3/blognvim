require("username_here.lazy")
require("username_here.keymaps")

-- Neovim Settings
local options = {
    -- Buffer Settings
    modifiable = true,               -- Allow modification in the current buffer
    fileencoding = "utf-8",          -- Set character encoding for the file

    -- Input & Interface
    mouse = "a",                     -- Enable mouse in all modes
    clipboard = "unnamedplus",       -- Use system clipboard for unnamed operations
    cmdheight = 3,                   -- Height of the command line area
    cursorline = true,               -- Highlight the line under the cursor
    termguicolors = true,            -- Use GUI colors in the terminal
    wrap = false,                    -- Disable line wrapping

    -- Tabs & Indentation
    shiftwidth = 4,                  -- Set auto-indent step size
    tabstop = 4,                     -- Number of spaces a <Tab> character equals
    softtabstop = 4,                 -- Spaces for <Tab> while editing
    smartindent = true,              -- Enable smart indentation

    -- Line Numbers
    number = true,                   -- Show line numbers
    relativenumber = true,           -- Show relative line numbers

    -- Window & Viewport
    splitbelow = true,               -- Split windows appear below the current window
    splitright = true,               -- Split windows appear to the right of the current window
    scrolloff = 8,                   -- Keep at least 8 lines above/below the cursor

    -- Search & Highlights
    hlsearch = false,                -- Don't highlight all search matches
    incsearch = true,                -- Highlight as you type your search

    -- File & Backup Operations
    undofile = true,                 -- Keep persistent undo history
    writebackup = false,             -- Do not create backups before overwriting files
    updatetime = 50,                 -- Time (ms) before swap file is written

    -- Other
    signcolumn = "yes",              -- Always show the sign column
}

-- Apply the above settings
for k, v in pairs(options) do
    vim.opt[k] = v
end
