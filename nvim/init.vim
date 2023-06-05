set mouse=a  
set mousehide
set number
set title
set hidden
set colorcolumn=79
set t_Co=256
set termencoding=utf-8
set novisualbell
set scrolloff=7
set completeopt=noinsert,menuone,noselect
set clipboard=unnamedplus
set cursorline
syntax on

set smartindent
set tabstop=2
set expandtab
set shiftwidth=2

set nobackup
set noswapfile
set fileencodings=utf-8,cp1251
filetype plugin indent on

call plug#begin('~/.vim/plugged')

"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'saadparwaiz1/cmp_luasnip'
"Plug 'L3MON4D3/LuaSnip'

Plug 'sainnhe/gruvbox-material'
Plug 'ayu-theme/ayu-vim'
Plug 'xiyaowong/nvim-transparent'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'

Plug 'rust-lang/rust.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'plasticboy/vim-markdown'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'wuelnerdotexe/vim-astro'

call plug#end()

let g:restfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:astro_typescript = 'enable'

let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n"
\              ."\t<div class=\"wrapper\">\n"
\              ."\t\t${child}|\n"
\              ."\t</div>\n"
\              ."</body>\n"
\              ."</html>",
\    },
\  },
\}

if (has('termguicolors'))
  set termguicolors
endif

set background=dark
colorscheme gruvbox-material
let g:transparent_enabled = v:true

imap jj <Esc>

nnoremap,<space> :nohlsearch<CR>
