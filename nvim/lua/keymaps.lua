local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate line
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- no highlight
keymap("n", "<leader>h", ":nohl<cr>", opts)

-- save all buffer
keymap("n", "<leader>w", "<cmd>wa<cr>", opts)
-- exit cur window
keymap("n", "<leader>q", "<cmd>q<cr>", opts)
-- exit all
keymap("n", "<C-q>", "<cmd>wqa!<cr>", opts)

-- p does not replace reigster
keymap("v", "p", '"_dP', opts)

-- Nvim tree
keymap("n", "<leader>e", "<cmd>Neotree toggle<cr>", opts)
keymap("n", "<leader>o", "<cmd>Neotree reveal<cr>", opts)

-- Buffer
keymap("n", "E", "<cmd>BufferLineCyclePrev<cr>", opts)
keymap("n", "R", "<cmd>BufferLineCycleNext<cr>", opts)
keymap("n", "<leader>bp", "<cmd>BufferLineTogglePin<cr>", opts)
keymap("n", "<leader>bb", "<cmd>BufferLinePick<cr>", opts)
-- buffer delete
keymap("n", "<leader>bd", "<cmd>lua require('bufdelete').bufdelete(0, true)<cr>", opts)

-- Gitsigns
keymap("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", opts)
keymap("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", opts)
keymap("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", opts)
keymap("n", "<leader>gl", "<cmd>Gitsigns blame_line<cr>", opts)
keymap("n", "]g", "<cmd>Gitsigns next_hunk<cr>", opts)
keymap("n", "[g", "<cmd>Gitsigns prev_hunk<cr>", opts)

-- Telescope
keymap("n", "<leader>r", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<leader>D", "<cmd>Telescope diagnostics<cr>", opts)
keymap("n", "<leader>f<cr>", "<cmd>Telescope resume<cr>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fw", "<cmd>lua require('telescope-live-grep-args.shortcuts').grep_word_under_cursor({postfix=''})<cr>", opts)
keymap("v", "<leader>fw", "<cmd>lua require('telescope-live-grep-args.shortcuts').grep_visual_selection({postfix=''})<cr>", opts)
keymap("n", "<leader>fg", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", opts)
-- no ignore, no config
keymap("n", "<leader>fF", "<cmd>Telescope find_files find_command=rg,--no-ignore,--hidden,--files,--no-config<cr>", opts)
keymap("n", "<leader>fW", "<cmd>lua require('telescope-live-grep-args.shortcuts').grep_word_under_cursor({postfix=' --no-ignore --no-config'})<cr>", opts)
keymap("v", "<leader>fW", "<cmd>lua require('telescope-live-grep-args.shortcuts').grep_visual_selection({postfix=' --no-ignore --no-config'})<cr>", opts)
keymap("n", "<leader>s", "<cmd>lua require('telescope.builtin').lsp_document_symbols({symbol_width = 55, fname_width = 25})<cr>", opts)
keymap("n", "<leader>S", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts)
keymap("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
keymap("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts)

-- outline
keymap("n", "<leader>lo", "<cmd>AerialToggle!<cr>", opts)

-- lazygit
-- keymap("n", "<leader>gg", "<cmd>LazyGit<cr>", opts)

-- search & replace config
keymap("n", "<leader>fr", "<cmd>GrugFar<cr>", opts)

-- session manager
keymap("n", "<leader>P", "<cmd>SessionManager! load_session<cr>", opts)

-- lsp
keymap("n", "<leader>li", "<cmd>LspInfo<cr>", opts)

-- dap
keymap("n", "<leader>dt", "<cmd>lua require('dapui').toggle()<cr>", opts)
keymap("n", "<leader>dT", "<cmd>lua require('dapui').float_element('stacks', {})<cr>", opts)
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dB", "<cmd>lua require'dap'.toggle_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>dn", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>ds", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>df", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dk", "<cmd>lua require'dap'.terminate()<cr>", opts)
keymap("n", "<leader>de", "<cmd>lua require('dapui').eval()<cr>", opts)
keymap("n", "<leader>d<cr>", "<cmd>lua require'dap'.run_last()<cr>", opts)

-- leap
keymap("n", "t", "<Plug>(leap-forward)", opts)
keymap("n", "T", "<Plug>(leap-backward)", opts)
keymap("n", "gs", "<Plug>(leap-from-window)", opts)

-- quickfix
keymap("n", "]c", "<cmd>cn<cr>", opts)
keymap("n", "[c", "<cmd>cp<cr>", opts)


-- cppp header/source switch
keymap("n", "<leader>j", "<cmd>ClangdSwitchSourceHeader<cr>", opts)
