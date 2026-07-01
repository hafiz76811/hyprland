return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    -- Setup
    require('nvim-treesitter').setup {
      install_dir = vim.fn.stdpath('data') .. '/site'
    }
    require('nvim-treesitter').install { 'lua', 'javascript', 'bash', 'python' }
    
    -- Highlighting
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'lua', 'javascript', 'bash', 'python' },
      callback = function() vim.treesitter.start() end,
    })

    -- Folds
    -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    -- vim.wo[0][0].foldmethod = 'expr'
    
    -- Indentation
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
}
