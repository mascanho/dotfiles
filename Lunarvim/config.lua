require("mascanho.options")
require("mascanho.plugins.typescript")
--[[
lvim is the global options object
this is
Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- vim.notify = require("notify")
vim.opt.backup = false
vim.opt.swapfile = false
vim.g.transparent_background = false -- transparent background(Default: false)
vim.g.italic_comments = true         -- italic comments(Default: true)
vim.g.italic_keywords = true         -- italic keywords(Default: true)
vim.opt.number = true
vim.opt.cursorline = false
vim.opt.relativenumber = false
vim.opt.sidescroll = 8

-- set markdown syntax
vim.cmd('set syntax=mdx')
vim.api.nvim_command("autocmd FileType markdown setlocal syntax=markdown")

-- Mascanho's keymaps
vim.keymap.set("i", "<C-s>", "<ESC> :w<CR>")
-- vim.keymap.set("n", "<S-s>s", ":split<CR> :terminal npm run dev<CR>")
vim.keymap.set("n", "<cr>", "i<CR>")
vim.keymap.set("i", "<C-BS>", "<Esc>cvb", {})

vim.keymap.set("n", "U", "<C-r>")

-- F# Keys
vim.keymap.set('n', '<F6>', ":w <bar> exec ':terminal '.shellescape('%:r')<CR>")


-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "rasmus"
lvim.transparent_window = false

-- Yank into system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y') -- yank motion
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"+d') -- delete motion
vim.keymap.set({ 'n', 'v' }, '<leader>D', '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set('n', '<leader>p', '"+p') -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P') -- paste before cursor

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false


-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-t>"] = ":ToggleTerm<CR>"
lvim.keys.normal_mode["<C-->"] = ":vsplit<cr>"

lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}

lvim.keys.insert_mode["<C-s"] = ":w<CR>"

-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" UV
lvim.keys.insert_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" UV
-- lvim.keys("n", "<C-s>", ":w<CR>")
-- lvim.keys("i", "<C-s>", "<ESC> :w<CR>")
--
-- Create horizontal & vertical splits
lvim.keys.normal_mode["<,-v>"] = ":vsplit<CR>"
lvim.keys.normal_mode["<,-h>"] = ":split<CR>"

-- Toggle terminal
-- lvim.keys.normal_mode["<C-t>"] = ":ToggleTerm<CR>"
--horizontal terminal
lvim.keys.normal_mode["<C-t>"] = ":ToggleTerm direction=horizontal<CR>"
--vertical terminal
lvim.keys.normal_mode["<S-2>"] = ":ToggleTerm direction=vertical<CR>"

-- move lines up and down like VScode
lvim.keys.normal_mode["<C-j>"] = ":m .+1<CR>==" -- move down up
lvim.keys.normal_mode["<C-k>"] = ":m .-2<CR>==" -- move line up


-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics"
--
--
-- ,
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "markdown",
  "prisma"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true


-- Additional Plugins
--
lvim.plugins = {
  -- Themes
  { 'rockerBOO/boo-colorscheme-nvim' },
  { 'kvrohit/mellow.nvim' },
  { 'ramojus/mellifluous.nvim' },
  { 'kvrohit/rasmus.nvim' },
  { 'rmehri02/onenord.nvim' },
  { 'Everblush/nvim' },
  { 'ldelossa/vimdark' },
  { 'kvrohit/substrata.nvim' },
  { 'yashguptaz/calvera-dark.nvim' },
  { "sainnhe/everforest" },
  { "rafamadriz/neon" },
  { 'Abstract-IDE/Abstract-cs' },
  {
    "sainnhe/gruvbox-material"
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000 -- Ensure it loads first
  },
  { 'projekt0n/github-nvim-theme',     version = 'v0.0.7' },
  { 'marko-cerovac/material.nvim' },
  { 'Allianaab2m/penumbra.nvim', },
  { 'ful1e5/onedark.nvim' },
  { "rebelot/kanagawa.nvim" },
  { 'nyoom-engineering/oxocarbon.nvim' },
  { "arturgoms/moonbow.nvim" },

  -- Blocks highlighted in the code
  {
    "HampusHauffman/block.nvim",
    config = function()
      require("block").setup({})
    end
  },

  -- Fast finder system
  {
    "kevinhwang91/rnvimr",
    cmd = "RnvimrToggle",
    config = function()
      vim.g.rnvimr_draw_border = 1
      vim.g.rnvimr_pick_enable = 1
      vim.g.rnvimr_bw_enable = 1
    end,
  },

  -- Prisma syntax highlighting
  { "prisma/vim-prisma" },
  { "preservim/vim-markdown" },

  -- { "sheerun/vim-polyglot" },

  -- Python environment
  { "ChristianChiarulli/swenv.nvim",
    "stevearc/dressing.nvim",
  },

  -- Markdown Preview
  -- { "ellisonleao/glow.nvim", config = true, cmd = "Glow" }, -- noicer ui


  -- Animations

  { 'karb94/neoscroll.nvim' },


  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        -- add any options here
        lsp = {
          override = {
            -- override the default lsp markdown formatter with Noice
            ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
            -- override the lsp markdown formatter with Noice
            ["vim.lsp.util.stylize_markdown"] = false,
            -- override cmp documentation with Noice (needs the other options to work)
            ["cmp.entry.get_documentation"] = false,
            ["config.lsp.hover.enabled"] = false
          },
          hover = {
            enabled = false
          },
          signature = {
            enabled = false
          },
        },
        dependencies = {
          -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
          "MunifTanjim/nui.nvim",
          -- OPTIONAL:
          --   `nvim-notify` is only needed, if you want to use the notification view.
          --   If not available, we use `mini` as the fallback
          "rcarriga/nvim-notify",
        }

      })
    end,
  },


  -- Navbudy, Ranger-like for symbols
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim"
        },
        opts = { lsp = { auto_attach = true } }
      }
    },
  },

  -- ChatGPT
  {
    "jackMort/ChatGPT.nvim",
    init = function()
      local status, wk = pcall(require, "which-key")
      if status then
        wk.register {
          ["<leader>c"] = { name = "ChatGPT" },
        }
      end
    end,
    config = function()
      require("chatgpt").setup {
        -- optional configuration
      }
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = {
      "ChatGPT",
      "ChatGPTEditWithInstructions",
      "ChatGPTActAs",
      "ChatGPTRunCustomCodeAction",
    },
    keys = {
      { "<leader>cg", "<cmd>ChatGPT<CR>",      mode = { "n", "x" }, desc = "ChatGPT" },
      {
        "<leader>ce",
        "<cmd>ChatGPTEditWithInstructions<CR>",
        mode = { "n", "x" },
        desc = "ChatGPT Edit With Instructions",
      },
      { "<leader>ca", "<cmd>ChatGPTActAs<CR>", mode = { "n", "x" }, desc = "ChatGPT Act As" },
      {
        "<leader>cc",
        "<cmd>ChatGPTRunCustomCodeAction<CR>",
        mode = { "n", "x" },
        desc = "ChatGPT Run Custom Code Action",
      },
    },
  },

  -- UI
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    config = function()
      require("notify").setup {
        stages = "fade_in_slide_out",
      }
      vim.notify = require "notify"
    end,
  }
  ,
  -- { "folke/lsp-colors.nvim" },



  {
    "neoclide/coc.nvim",
    branch = "release",
    cond = vim.g.vscode == nil,
    init = function()
      vim.cmd [[ let b:coc_suggest_disable = 1 ]]
      -- vim.cmd [[ autocmd FileType json let b:coc_suggest_disable = 0 ]]
    end,
    config = function()
      vim.cmd [[
        hi link CocInlayHint Comment
        call coc#add_extension('coc-pyright')
        call coc#add_extension('coc-snippets')
        " call coc#add_extension('prismals')
        " CocUninstall coc-sh
        " CocUninstall coc-clangd
        " CocUninstall coc-vimlsp
        " CocUninstall coc-java
        " CocUninstall coc-html
        " CocUninstall coc-css
        " CocUninstall coc-json
        " CocUninstall coc-yaml
        " CocUninstall coc-markdownlint
        " CocUninstall coc-sumneko-lua
        " CocUninstall coc-snippets
        " CocUninstall coc-actions
      ]]
    end,
  },


  { "JoosepAlviste/nvim-ts-context-commentstring", event = "BufRead" }, -- Better JSX + TSX comment

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
      autotag = true
    end,
  },
  {
    "p00f/nvim-ts-rainbow",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript", "typescript", "python" }, {
        RGB = true,      -- #RGB hex codes
        RRGGBB = true,   -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true,   -- CSS rgb() and rgba() functions
        hsl_fn = true,   -- CSS hsl() and hsla() functions
        css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
    { "karb94/neoscroll.nvim" },
  },
  {
    "felipec/vim-sanegx",
    event = "BufRead",
  },


  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    -- build = "cd app && yarn install",
    build = ":call mkdp#util#install()",
  },

  { "dcampos/nvim-snippy" },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "<CurrentMajor>.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
  },
  { "derektata/lorem.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "neovim/nvim-lspconfig" },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "MunifTanjim/prettier.nvim" },
  { "windwp/nvim-autopairs" },
  { "mattn/emmet-vim" },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "ggandor/lightspeed.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "folke/zen-mode.nvim" },
  { "rcarriga/nvim-notify" },
  {
    "themaxmarchuk/tailwindcss-colors.nvim",
  },
  { "echasnovski/mini.nvim" },
  "Exafunction/codeium.vim",
  config = function()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set("i", "<C-[>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true })
    vim.keymap.set("i", "<c-;>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true })
    vim.keymap.set("i", "<c-,>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true })
    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true })
  end,
}



-- lvim.builtin.treesitter.rainbow.enable = true
require("tailwindcss-colors").setup({})
require("luasnip").filetype_extend("javascript", { "html" })
-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
-- "sumneko_lua",
-- "jsonls",
-- "prisma"
-- }
-- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lis'ggandor/lightspeed.nvims which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

local nvim_lsp = require("lspconfig")
local on_attach = function(client, bufnr)
  -- other stuff --
  require("tailwindcss-colors").buf_attach(bufnr)
end

nvim_lsp["tailwindcss"].setup({
  -- other settings --
  on_attach = on_attach,
})
-- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  { command = "black", filetypes = { "python" } },
  { command = "isort", filetypes = { "python" } },
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--print-with", "100" },
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = {
      "typescript",
      "typescriptreact",
      "javascript",
      "javascriptreact",
      "css",
      "scss",
      "sass",
      "html",
      "markdown",
      "mdx",
      "md",
    },
  },
})

-- set additional linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  { command = "flake8", filetypes = { "python" } },
  {
    -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "shellcheck",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--severity", "warning" },
  },
  {
    command = "codespell",
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "javascript", "python", "typescript", "typescriptreact", "markdown" },
  },
})

--

local lspconfig = require("lspconfig")
local configs = require("lspconfig/configs")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
  -- on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "markdown" },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  },
})

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.json", "*.jsonc" },
  -- enable wrap mode for json files only
  command = "setlocal wrap",
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "zsh",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "markdown")
  end,
})
--
-- load required null-ls references
local h = require("null-ls.helpers")
local cmd_resolver = require("null-ls.helpers.command_resolver")
local methods = require("null-ls.methods")
local u = require("null-ls.utils")
local FORMATTING = methods.internal.FORMATTING
local pe = h.make_builtin({
  name = "prettier_eslint",
  meta = {
    url = "https://github.com/prettier/prettier-eslint-cli",
    description = "Eslint + Prettier",
  },
  method = FORMATTING,
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "html",
  },
  factory = h.formatter_factory,
  generator_opts = {
    command = "prettier-eslint",
    args = { "--stdin", "--parser", "babel", "--resolve-plugins-relative-to", "~/.nvm/versions/node/v16.16.0/lib" },
    to_stdin = true,
  },
})

-- optional: LunarVim related step. Here we enable eslint as linter for Javascript.
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    command = "eslint",
    filetypes = { "javascript", "typescript", "html" },
  },
})


