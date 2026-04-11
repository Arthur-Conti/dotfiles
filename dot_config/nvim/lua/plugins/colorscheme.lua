return {
  {
    "RRethy/base16-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Carrega as cores geradas pelo Noctalia (Matugen)
      local ok, matugen = pcall(require, "matugen")
      if ok then
        matugen.setup()
      end
    end,
  },
  -- Desativa o tema padrão do LazyVim para que o Noctalia assuma
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function() end,
    },
  },
}
