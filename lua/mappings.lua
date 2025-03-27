require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
<<<<<<< HEAD
<<<<<<< HEAD


-- diagnostic float
map("n", "<leader>de", function()
  vim.diagnostic.open_float()
end, { desc = "Show diagnostics (float)" })

=======
>>>>>>> f49e614 (add git mappings)


require("gitsigns").setup{

  on_attach = function(bufnr)

    local gitsigns = require("gitsigns")

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Actions
    map('n', '<leader>gs', gitsigns.stage_hunk, {desc= "gitsigns: stage_hunk"})
    map('n', '<leader>gu', gitsigns.undo_stage_hunk, {desc= "gitsigns: undo stage hunk"})
    map('n', '<leader>gr', gitsigns.reset_hunk, {desc= "gitsigns: reset hunk"})
    map('v', '<leader>gs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, {desc= "gitsigns: stage hunk"})
    map('v', '<leader>gr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, {desc= "gitsigns: reset hunk"})
    map('n', '<leader>gp', gitsigns.preview_hunk_inline, {desc= "gitsigns: preview hunk inline"})

  end
}
<<<<<<< HEAD
=======
>>>>>>> 92d4172 (first commit)
=======
>>>>>>> f49e614 (add git mappings)
