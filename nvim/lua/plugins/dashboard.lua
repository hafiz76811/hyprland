return {
  "goolord/alpha-nvim",
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-mini/mini.icons'
  },
  config = function()
    -- require'alpha'.setup(require'alpha.themes.startify'.config)
    require'alpha'.setup(require'alpha.themes.theta'.config)
  end
}
