return {
  "nvimtools/hydra.nvim",
  lazy = false, -- ensure it's loaded early if hydras are eager
  config = function()
    local Hydra = require("hydra")

    -- Example: Hydra for REPL navigation (customize heads as needed)
    local hint = [[
  _n_: next cell    _p_: prev cell    _r_: run cell    _q_: quit
]]
    Hydra({
      name = "REPL",
      hint = hint,
      config = {
        invoke_on_body = true,
        color = "teal",
        hint = {
          position = "bottom",
          border = "rounded",
        },
      },
      mode = "n",
      body = "<leader>r",
      heads = {
        { "n", "<cmd>call SomeReplNextCell()<CR>", { desc = "next", exit = false } },
        { "p", "<cmd>call SomeReplPrevCell()<CR>", { desc = "prev", exit = false } },
        { "r", "<cmd>call SomeReplRunCell()<CR>", { desc = "run", exit = false } },
        { "q", nil, { exit = true, nowait = true, desc = "quit" } },
      },
    })
  end,
}
