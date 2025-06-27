local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 1 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(2)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "plugins" },
    { "mg979/vim-visual-multi", branch = "master" },

    -- Add your themes here
    { "ellisonleao/gruvbox.nvim" },
    { "rebelot/kanagawa.nvim" },
    { "catppuccin/nvim", name = "catppuccin", lazy = false },
    { "rose-pine/neovim", name = "rose-pine" },
    { "sainnhe/everforest" },
    { "bluz71/vim-nightfly-colors" },
    { "NLKNguyen/papercolor-theme" },
    { "romainl/Apprentice" },
    -- Set default theme for LazyVim
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "kanagawa", -- Change this to the theme of your choice
      },
    },
  },
  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },
  install = {
    colorscheme = { "tokyonight", "habamax", "ellisonleao/gruvbox.nvim" },
  },
  checker = {
    enabled = true, -- Check for plugin updates periodically
    notify = false, -- Notify on update
  },
  performance = {
    rtp = {
      -- Disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
})
