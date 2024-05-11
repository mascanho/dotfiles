-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
-- MIT license, see LICENSE for more details.


-- Custom Kanagawa themed colors
-- Stylua has no default kanagawa theme so i made my own
-- Gruvbox would work but it was too bright for me

-- stylua: ignore
return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local colors = {
      bg = '#1f1f28',           -- sumiInk
      fg = '#dcd7ba',           -- foam
      blue = '#7fb4ca',         -- springBlue
      darkblue = '#223249',     -- waveBlue
      yellow = '#e0af68',       -- springYellow
      pink = '#d27e99',         -- sakuraPink
      green = "#C1E1C1"
    }

    local conditions = {
      buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
      end,
      hide_in_width = function()
        return vim.fn.winwidth(0) > 80
      end,
    }

    local config = {
      options = {
        component_separators = "",
        section_separators = "",
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
        theme = {
          normal = { c = { fg = colors.fg, bg = colors.bg, gui = '' } },
          inactive = { c = { fg = colors.fg, bg = colors.bg, gui = '' } },
        },
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    }




    local function ins_left(component)
      table.insert(config.sections.lualine_c, component)
    end

    local function ins_right(component)
      table.insert(config.sections.lualine_x, component)
    end

    -- left
    ins_left {
      function()
        return '▊'
      end,
      color = { fg = colors.yellow},
      padding = { left = 0, right = 1 },
    }
    ins_left {
      'mode',
      color = function()
        local mode_color = {
          n = colors.pink,
          i = colors.yellow,
          v = colors.blue,
          [''] = colors.blue,
          V = colors.blue,
        }
        return { fg = mode_color[vim.fn.mode()] or colors.pink, gui = '' }
      end,
      padding = { right = 1 }
    }
    ins_left {
    'branch',
    icon = '',
    color = { fg = colors.blue, gui = '' },
    }
    -- ins_left { 'location' }
    ins_left {
      'filename',
      cond = conditions.buffer_not_empty,
      icon = { " ", align = 'left', padding = { left = 0, right = 1 }, color = { fg = colors.green, gui = '' } }, 
      padding = { left = 2, right = 0 }, 
      color = { fg = colors.yellowm, gui = '' },
    }

    -- right
    -- ins_right {
    --   'fileformat',
    --   fmt = string.upper,
    --   icons_enabled = true,
    --   color = { fg = colors.yellow, gui = 'bold' },
    -- }
    ins_right {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      symbols = { error = ' ', warn = ' ', info = ' ' },
      diagnostics_color = {
        error = { fg = colors.pink },
        warn = { fg = colors.yellow },
        info = { fg = colors.blue },
      },
    }
    ins_right { 'filetype', color = { fg = colors.fg, gui = '' } }
    ins_right {
      'progress',
      color = { fg = colors.fg, gui = '' },
      
    }
    ins_right {
      function()
        return os.date("%H:%M")
      end,
      color = { fg = colors.blue, gui = '' }
    }
    ins_right {
      function()
        return '▊'
      end,
      color = { fg = colors.yellow},
      padding = { left = 1 },
    }

    require('lualine').setup(config)
  end
}
