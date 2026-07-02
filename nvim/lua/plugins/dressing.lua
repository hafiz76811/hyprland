return {
  {
    "stevearc/dressing.nvim",
    lazy = false,
    opts = {
      input = {
        enabled = true,
        default_prompt = "Input:",
        title_pos = "left", -- Posisi judul kotak input (left, center, right)
        insert_only = true, -- Selalu mulai dalam Mode Insert
        start_in_insert = true,
        border = "rounded", -- Bentuk bingkai kotak input
        relative = "cursor", -- Kotak input muncul di posisi kursor aktif
      },
      select = {
        enabled = true,
        backend = { "telescope", "builtin" }, -- Telescope prioritas utama, builtin sebagai cadangan
        trim_prompt = true,
        telescope = {
          -- Mengatur tema tampilan Telescope khusus untuk dressing.nvim
          theme = "dropdown", -- Pilihan tema: dropdown, cursor, ivy
        },
      },
    },
  },
}

