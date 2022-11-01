return require('packer').startup(
    function(use)
use 'wbthomason/packer.nvim'
use {'junegunn/fzf.vim', run = '{-> fzf#install}'}
use 'junegunn/fzf'
--use 'arcticicestudio/nord-vim'
use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
use 'tpope/vim-fugitive'
use 'jiangmiao/auto-pairs'
use 'mattn/emmet-vim'
use 'kyazdani42/nvim-web-devicons'
use 'nvim-tree/nvim-web-devicons'
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}  -- We recommend updating the parsers on update
use 'nvim-lua/popup.nvim'
use 'nvim-lua/plenary.nvim'
use 'nvim-telescope/telescope.nvim'
use {'nvim-telescope/telescope-fzf-native.nvim' ,  run = 'make' }
use 'kyazdani42/nvim-tree.lua'
use 'neovim/nvim-lspconfig'
use {'hrsh7th/nvim-cmp' , requires = { 'hrsh7th/vim-vsnip', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-nvim-lsp' , 'hrsh7th/cmp-path'} }
use 'mfussenegger/nvim-jdtls'
use 'RishabhRD/popfix'
use 'RishabhRD/nvim-cheat.sh'
use 'onsails/lspkind-nvim'
use 'RishabhRD/nvim-lsputils'
use 'tyru/open-browser.vim'
use 'aklt/plantuml-syntax'
use "numToStr/FTerm.nvim"
use 'crusoexia/vim-monokai'
use 'iamcco/markdown-preview.nvim'
use 'mfussenegger/nvim-dap'
use "Pocco81/DAPInstall.nvim"
use 'nvim-telescope/telescope-dap.nvim'
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
use 'vim-test/vim-test'
use 'tveskag/nvim-blame-line'
use { 'michaelb/sniprun', run = 'bash ./install.sh'}
use { "rcarriga/vim-ultest", requires = {"vim-test/vim-test"}, run = ":UpdateRemotePlugins" }
use { "ray-x/lsp_signature.nvim", }
use 'jose-elias-alvarez/null-ls.nvim'
use 'terrortylor/nvim-comment'
use 'dhruvmanila/telescope-bookmarks.nvim'
use 'jvgrootveld/telescope-zoxide'
use { "rafcamlet/tabline-framework.nvim",  requires = "kyazdani42/nvim-web-devicons" }
use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
        end
)
