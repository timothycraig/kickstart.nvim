return { -- A File Explorer For Neovim Written In Lua
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local nvimtree = require 'nvim-tree'

    -- Disable default file browser
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup {
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      diagnostics = {
        enable = true,
      },
      filters = {
        git_ignored = false,
        dotfiles = false,
      },
      renderer = {
        highlight_git = 'name',
        highlight_diagnostics = 'name',
        icons = {
          git_placement = 'after',
        },
        special_files = {},
      },
      update_focused_file = {
        enable = true,
      },
    }

    vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file [e]xplorer' })
    vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file [e]xplorer on current file' })
    vim.keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = 'Collapse file [e]xplorer' })
    vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh file [e]xplorer' })
  end,
}
