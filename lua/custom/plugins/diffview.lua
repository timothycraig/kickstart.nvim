return { -- Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {
      view = {
        merge_tool = {
          layout = 'diff3_mixed',
        },
      },
    }

    vim.keymap.set('n', '<leader>gd', ':DiffviewOpen<CR>', { silent = true, noremap = true })
  end,
}
