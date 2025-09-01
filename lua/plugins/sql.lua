return {
  {
    "tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    config = function()
      -- Example configuration using a dictionary with keys:
      vim.g.dbs = {
        -- dev = "postgresql://user:password@host:port/database",
        -- staging = "mysql://user:password@host:port/database",
      }
    end,
  },
}
