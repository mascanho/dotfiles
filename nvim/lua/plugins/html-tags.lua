return {

  require("nvim-treesitter.configs").setup({
    autotag = {
      enable = true,
      filetypes = { "html", "xml", "tsx", "jsx", "ts", "js" },
    },
  }),
}
