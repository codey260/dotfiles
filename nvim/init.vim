" ========================
" PLUGINS
" ========================
call plug#begin('~/.vim/plugged')

" Theme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Transparency
Plug 'xiyaowong/transparent.nvim'

" File explorer
Plug 'nvim-tree/nvim-tree.lua'

" Status line
Plug 'nvim-lualine/lualine.nvim'

" Icons
Plug 'nvim-tree/nvim-web-devicons'   " <-- Added this line

" Fuzzy finder
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'nvim-lua/plenary.nvim'

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Git integration
Plug 'tpope/vim-fugitive'

call plug#end()

" ========================
" BASIC SETTINGS
" ========================
set number
set relativenumber
set termguicolors
set background=dark

" Theme
colorscheme catppuccin

" Transparency
lua require('transparent').setup()

" ========================
" NVIM-TREE CONFIG
" ========================
lua << EOF
require("nvim-tree").setup {
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      }
    }
  }
}
EOF
nnoremap <C-n> :NvimTreeToggle<CR>

" ========================
" LUALINE CONFIG
" ========================
lua << EOF
require('lualine').setup {
  options = {
    theme = 'catppuccin',
    icons_enabled = true, -- enable icons for lualine
    section_separators = { left = '<', right = '>' },
    component_separators = { left = '<', right = '>' }
  }
}
EOF

" ========================
" TELESCOPE MAPPINGS
" ========================
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

